import numpy as np
import pandas as pd
from scipy import spatial
def sor(ins, outs):
    dists=[]
    c = ins['Classification']
    df = pd.DataFrame(ins, columns=['X','Y','Z'])
    tree = spatial.cKDTree(df)
    for _, point in df.iterrows():
        dist, _ = tree.query(point, k=9)
        dists = np.append(dists, dist[1:].mean())
    threshold = dists.mean() + 3 * dists.std()
    c[dists > threshold] = 7
    outs['Classification'] = c
    return True
