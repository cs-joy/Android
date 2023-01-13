import io
import matplotlib.pyplot as pyplot

def plot(x, y):
    xa = [float(word) for word in x.split()]
    ya = [float(word) for word in y.split()]

    fig, ax = pyplot.subplots()
    ax.plot(xa, ya)

    f = io.BytesIO()
    pyplot.savefig(f, format="png")

    return f.getvalue()