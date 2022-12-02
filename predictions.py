import random

import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
from matplotlib.backends._backend_tk import NavigationToolbar2Tk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
from tensorflow import keras
import tkinter as tk
from tkinter.filedialog import askopenfile, asksaveasfilename, askopenfilename
from tkinter import ttk
import mne

# initialize a Tkinter root object
data = pd.DataFrame()
root = tk.Tk()
# p1 = tk.PhotoImage(file='icon.png')
# root.iconphoto(False, p1)
# getting screen width and height of display
width = root.winfo_screenwidth()
height = root.winfo_screenheight()
ans = tk.StringVar()
checkVar1 = tk.BooleanVar(value=1)
# setting tkinter window size
root.geometry("%dx%d" % (width, height))
root.title("PSC ISE 2")
frame = tk.Frame(root, height=550)


def open_file():
    global data
    file = askopenfilename(parent=root, title="Choose a File",
                           filetypes=[('CSV files', '*.csv'), ('Text files', '*.txt')])
    filename_var.set('Opened : ' + file.split("/")[-1])
    splittedname = file.split('.', 1)
    print(splittedname[-1])
    data = pd.read_csv(file)
    # print(data)
    # print(data.head())
    # global ans
    # ans.set(Functions.data_leak(data))
    # print(ans)


def func(choice):
    if choice == 0:
        fp1Label.config(state="normal")
        fp1_txt.config(state="normal")
        fp2Label.config(state="normal")
        fp2_txt.config(state="normal")
        f3Label.config(state="normal")
        f3_txt.config(state="normal")
        f4Label.config(state="normal")
        f4_txt.config(state="normal")
        f7Label.config(state="normal")
        f7_txt.config(state="normal")
        f8Label.config(state="normal")
        f8_txt.config(state="normal")
        t3Label.config(state="normal")
        t3_txt.config(state="normal")
        t4Label.config(state="normal")
        t4_txt.config(state="normal")
        c3Label.config(state="normal")
        c3_txt.config(state="normal")
        c4Label.config(state="normal")
        c4_txt.config(state="normal")
        t5Label.config(state="normal")
        t5_txt.config(state="normal")
        t6Label.config(state="normal")
        t6_txt.config(state="normal")
        p3Label.config(state="normal")
        p3_txt.config(state="normal")
        p4Label.config(state="normal")
        p4_txt.config(state="normal")
        o1Label.config(state="normal")
        o1_txt.config(state="normal")
        o2Label.config(state="normal")
        o2_txt.config(state="normal")
        fzLabel.config(state="normal")
        fz_txt.config(state="normal")
        czLabel.config(state="normal")
        cz_txt.config(state="normal")
        pzLabel.config(state="normal")
        pz_txt.config(state="normal")
        a2a1Label.config(state="normal")
        a2a1_txt.config(state="normal")
        ecgLabel.config(state="normal")
        ecg_txt.config(state="normal")
        row_label.config(state="normal")
        row_txt.config(state="normal")
    else:
        fp1Label.config(state="disabled")
        fp1_txt.config(state="disabled")
        fp2Label.config(state="disabled")
        fp2_txt.config(state="disabled")
        f3Label.config(state="disabled")
        f3_txt.config(state="disabled")
        f4Label.config(state="disabled")
        f4_txt.config(state="disabled")
        f7Label.config(state="disabled")
        f7_txt.config(state="disabled")
        f8Label.config(state="disabled")
        f8_txt.config(state="disabled")
        t3Label.config(state="disabled")
        t3_txt.config(state="disabled")
        t4Label.config(state="disabled")
        t4_txt.config(state="disabled")
        c3Label.config(state="disabled")
        c3_txt.config(state="disabled")
        c4Label.config(state="disabled")
        c4_txt.config(state="disabled")
        t5Label.config(state="disabled")
        t5_txt.config(state="disabled")
        t6Label.config(state="disabled")
        t6_txt.config(state="disabled")
        p3Label.config(state="disabled")
        p3_txt.config(state="disabled")
        p4Label.config(state="disabled")
        p4_txt.config(state="disabled")
        o1Label.config(state="disabled")
        o1_txt.config(state="disabled")
        o2Label.config(state="disabled")
        o2_txt.config(state="disabled")
        fzLabel.config(state="disabled")
        fz_txt.config(state="disabled")
        czLabel.config(state="disabled")
        cz_txt.config(state="disabled")
        pzLabel.config(state="disabled")
        pz_txt.config(state="disabled")
        a2a1Label.config(state="disabled")
        a2a1_txt.config(state="disabled")
        ecgLabel.config(state="disabled")
        ecg_txt.config(state="disabled")
        row_txt.config(state="disabled")
        row_label.config(state="disabled")


# browse button
open_frame = tk.Frame(frame)
browse_text = tk.StringVar()
filename_var = tk.StringVar()
browse_btn = tk.Button(open_frame, textvariable=browse_text, command=lambda: open_file(), font=("Arial", 15),
                       relief='raised',
                       borderwidth=2)
browse_text.set("Open File")
file_lbl = tk.Label(open_frame, textvariable=filename_var, font=('Arial', 13), padx=10)
browse_btn.grid(column=0, row=0, sticky="nw")
file_lbl.grid(column=1, row=0)

# Smoothing Frame
smoothing_frame = tk.LabelFrame(frame, text="EEG Values", font=("Arial", 15))
var2 = tk.IntVar()
check_var2 = tk.IntVar(value=1)

fp1Label = tk.Label(smoothing_frame, text="Fp1", justify='left', anchor='w', padx=20, pady=15)
fp1_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
fp2Label = tk.Label(smoothing_frame, text="Fp2", justify='left', anchor='w', padx=20, pady=15)
fp2_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
f3Label = tk.Label(smoothing_frame, text="F3", justify='left', anchor='w', padx=20, pady=15)
f3_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
f4Label = tk.Label(smoothing_frame, text="F4", justify='left', anchor='w', padx=20, pady=15)
f4_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
f7Label = tk.Label(smoothing_frame, text="F7", justify='left', anchor='w', padx=20, pady=15)
f7_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
f8Label = tk.Label(smoothing_frame, text="F8", justify='left', anchor='w', padx=20, pady=15)
f8_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
t3Label = tk.Label(smoothing_frame, text="T3", justify='left', anchor='w', padx=20, pady=15)
t3_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
t4Label = tk.Label(smoothing_frame, text="T4", justify='left', anchor='w', padx=20, pady=15)
t4_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
c3Label = tk.Label(smoothing_frame, text="C3", justify='left', anchor='w', padx=20, pady=15)
c3_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
c4Label = tk.Label(smoothing_frame, text="C4", justify='left', anchor='w', padx=20, pady=15)
c4_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
t5Label = tk.Label(smoothing_frame, text="T5", justify='left', anchor='w', padx=20, pady=15)
t5_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
t6Label = tk.Label(smoothing_frame, text="T6", justify='left', anchor='w', padx=20, pady=15)
t6_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
p3Label = tk.Label(smoothing_frame, text="P3", justify='left', anchor='w', padx=20, pady=15)
p3_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
p4Label = tk.Label(smoothing_frame, text="P4", justify='left', anchor='w', padx=20, pady=15)
p4_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
o1Label = tk.Label(smoothing_frame, text="O1", justify='left', anchor='w', padx=20, pady=15)
o1_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
o2Label = tk.Label(smoothing_frame, text="O2", justify='left', anchor='w', padx=20, pady=15)
o2_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
fzLabel = tk.Label(smoothing_frame, text="Fz", justify='left', anchor='w', padx=20, pady=15)
fz_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
czLabel = tk.Label(smoothing_frame, text="Cz", justify='left', anchor='w', padx=20, pady=15)
cz_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
pzLabel = tk.Label(smoothing_frame, text="Pz", justify='left', anchor='w', padx=20, pady=15)
pz_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
a2a1Label = tk.Label(smoothing_frame, text="A2-A1", justify='left', anchor='w', padx=20, pady=15)
a2a1_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
ecgLabel = tk.Label(smoothing_frame, text="ECG", justify='left', anchor='w', padx=20, pady=15)
ecg_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled")
row_label = tk.Label(smoothing_frame, text="Enter a row :", justify='left', anchor='w', padx=20, pady=15)
row_txt = tk.Entry(smoothing_frame, bg='light cyan', state="disabled", width=80)
checkb = tk.Checkbutton(smoothing_frame, text="Select Automatically", variable=checkVar1,
                        command=lambda: func(checkVar1.get()), pady=20)

fp1Label.grid(column=0, row=0)
fp1_txt.grid(column=1, row=0)
fp2Label.grid(column=2, row=0)
fp2_txt.grid(column=3, row=0)
f3Label.grid(column=4, row=0)
f3_txt.grid(column=5, row=0)
f4Label.grid(column=0, row=1)
f4_txt.grid(column=1, row=1)
f7Label.grid(column=2, row=1)
f7_txt.grid(column=3, row=1)
f8Label.grid(column=4, row=1)
f8_txt.grid(column=5, row=1)
t3Label.grid(column=0, row=2)
t3_txt.grid(column=1, row=2)
t4Label.grid(column=2, row=2)
t4_txt.grid(column=3, row=2)
c3Label.grid(column=4, row=2)
c3_txt.grid(column=5, row=2)
c4Label.grid(column=0, row=3)
c4_txt.grid(column=1, row=3)
t5Label.grid(column=2, row=3)
t5_txt.grid(column=3, row=3)
t6Label.grid(column=4, row=3)
t6_txt.grid(column=5, row=3)
p3Label.grid(column=0, row=4)
p3_txt.grid(column=1, row=4)
p4Label.grid(column=2, row=4)
p4_txt.grid(column=3, row=4)
o1Label.grid(column=4, row=4)
o1_txt.grid(column=5, row=4)
o2Label.grid(column=0, row=5)
o2_txt.grid(column=1, row=5)
fzLabel.grid(column=2, row=5)
fz_txt.grid(column=3, row=5)
czLabel.grid(column=4, row=5)
cz_txt.grid(column=5, row=5)
pzLabel.grid(column=0, row=6)
pz_txt.grid(column=1, row=6)
a2a1Label.grid(column=2, row=6)
a2a1_txt.grid(column=3, row=6)
ecgLabel.grid(column=4, row=6)
ecg_txt.grid(column=5, row=6)
row_label.grid(column=0, row=7)
row_txt.grid(column=1, row=7, columnspan=5)
checkb.grid(column=0, row=8)

## Answer frame
ans_frame = tk.LabelFrame(frame, text="Answer", font=("Arial", 15), bd=5)


def getPrediction(data, choice):
    if choice == 1:
        # data1 = data.sample(n=10)
        data1 = data.values
        result = (trained_model.predict(data1) > 0.5).astype("int32")
        unique, counts = np.unique(result, return_counts=True)
        print(len(unique))
        if len(unique) > 1:
            print("Im in")
            percentActive = (counts[1] / (counts[0] + counts[1])) * 100
            percentInactive = (counts[0] / (counts[0] + counts[1])) * 100

            if percentActive >= 8:
                # print("The person is active")
                ansFinal.set("The person is in active state")
            else:
                # print("The person is inactive")
                ansFinal.set("The person is in inactive state")
        else:
            #print(result)
            if counts[0] == 0:
                ansFinal.set("The person is in inactive state")
            else:
                ansFinal.set("The person is in active state")
    else:
        if len(fp1_txt.get()) == 0:
            data1 = np.array(row_txt.get().split(','), float)
            data1 = np.reshape(data1, (1, 21))
            #print(data1.shape)
            #print(type(data1))
            result = (trained_model.predict(data1) > 0.5).astype("int32")
            unique, counts = np.unique(result, return_counts=True)
            #print(result)
            if counts[0] == 0:
                ansFinal.set("The person is in inactive state")
            else:
                ansFinal.set("The person is in active state")
            #print(counts[0])
        else:
            data1 = np.array([fp1_txt.get(), fp2_txt.get(), f3_txt.get(), f4_txt.get(),
                              f7_txt.get(), f8_txt.get(), t3_txt.get(), t4_txt.get(), c3_txt.get(),
                              c4_txt.get(), t5_txt.get(), t6_txt.get(), p3_txt.get(), p4_txt.get(),
                              o1_txt.get(), o2_txt.get(), fz_txt.get(), cz_txt.get(), pz_txt.get(), a2a1_txt.get(),
                              ecg_txt.get()])
            # data1 = data.values
            data1 = np.reshape(data1, (1, 21))
            result = (trained_model.predict(data1) > 0.5).astype("int32")
            unique, counts = np.unique(result, return_counts=True)
            #print(data)
            #print(data1)
            #print(type(data1))
            #print(counts[0])
            if counts[0] == 0:
                ansFinal.set("The person is in inactive state")
            else:
                ansFinal.set("The person is in active state")
            #print(data1)


describe_btn = tk.Button(ans_frame, text="Predict", font=("Arial", 12),
                         command=lambda: getPrediction(data, checkVar1.get()))
ansFinal = tk.StringVar(ans_frame, "")
labelAns = tk.StringVar(ans_frame, "Prediction: ")
ansLabel = tk.Label(ans_frame, textvariable=labelAns)
ansTxt = tk.Entry(ans_frame, textvariable=ansFinal, width=60, font=("Helvetica", 15), bg="light cyan")
describe_btn.grid(column=0, row=0, sticky='w', padx=20, pady=20)
ansLabel.grid(column=0, row=1, sticky='w', padx=20, pady=5)
ansTxt.grid(column=0, row=2, sticky='w', padx=20, pady=5)

plot_frame = tk.Frame(root)


def plot_all(data):
    for widget in plot_frame.winfo_children():
        widget.destroy()
    tabControl = ttk.Notebook(plot_frame)
    tab1 = ttk.Frame(tabControl)
    tab2 = ttk.Frame(tabControl)
    tabControl.add(tab1, text='Tab 1')
    tabControl.pack(side='bottom', fill="x")
    fig = Figure(figsize=(16, 4), dpi=100)
    # adding the subplot
    plot1 = fig.add_subplot(111)
    eeg = np.array(data)

    # Using ending semicolon to suppress output of plotting functions.
    plot1.plot(eeg[0:50, :].T);

    # plotting the graph
    # Plotting both the curves simultaneously

    # Naming the x-axis, y-axis and the whole graph
    plot1.set_xlabel("Time")
    plot1.set_ylabel("Counts")
    plot1.set_title("Detectors")

    # Adding legend, which helps us recognize the curve according to it's color
    plot1.legend()
    # creating the Tkinter canvas
    # containing the Matplotlib figure
    canvas = FigureCanvasTkAgg(fig,
                               master=tab1)
    canvas.draw()

    # placing the canvas on the Tkinter window
    canvas.get_tk_widget().pack(side='bottom', fill='x', anchor='w')

    # creating the Matplotlib toolbar
    toolbar = NavigationToolbar2Tk(canvas,
                                   tab1)
    toolbar.update()

    # placing the toolbar on the Tkinter window
    canvas.get_tk_widget().pack(side='bottom', fill='x', anchor='sw')
    plot_frame.pack(side='bottom', fill='x', anchor='w')
    # Create a Label in New window


plot_btn = tk.Button(root, text="Plot", command=lambda: plot_all(data))

trained_model = keras.models.load_model(f'model')
print('model loaded')

# df = pd.read_csv(f'D:/Code/PSP/data/edf/Subject00_1.csv')
# df1 = df.sample(n = 10)
# dataset = df1.values
open_frame.pack(side='top', anchor='nw', padx=20, pady=20)
smoothing_frame.pack(side='left', anchor='nw', padx=20, ipadx=20)
ans_frame.pack(side='left', anchor='nw', expand='true', fill='both', padx=20)
plot_btn.pack(side='bottom', fill='x')
frame.pack(side='top', anchor='nw', fill='both')
frame.pack_propagate(0)
root.mainloop()
