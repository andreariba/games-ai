from multiprocess import Pool

def f(x):
    return x*x


if __name__=="__main__":
    p = Pool(5)

    with p:
        result = p.map(f, [1,2,3])
        print(result)