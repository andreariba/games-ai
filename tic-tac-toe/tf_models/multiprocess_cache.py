import multiprocess as mp
from multiprocess.managers import SyncManager

n_cores = mp.cpu_count()

def parallel_fn(job_n, cache):
    cache[job_n] = job_n
    return job_n

if __name__=="__main__":
    with SyncManager() as manager:

        shared_cache = manager.dict()
        
        # Create a list of tuples to use as args in starmap
        args = [(n, shared_cache) for n in range(n_cores)]

        with mp.Pool(n_cores) as pool:
            result = pool.starmap(parallel_fn, args)

            print(result)
        
        print(shared_cache)