import matplotlib
import matplotlib.pyplot as plt
import csv
  
x1 = []
x2 = []
x3 = []
y1 = []
y2 = []
y3 = []
  
with open('age_marital.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter=',')
    for row in lines:
        if(row[1] == "single"):
          x1.append(float(row[0]))
          y1.append(float(row[2]))
        if(row[1] == "married"):
          x2.append(float(row[0]))
          y2.append(float(row[2]))
        if(row[1] == "divorced"):
          x3.append(float(row[0]))
          y3.append(float(row[2]))




def mysort(x,y):
  zipped_lists = zip(x,y)
  sorted_pairs = sorted(zipped_lists)
  tuples = zip(*sorted_pairs)
  x,y = [ list(tuple) for tuple in tuples ]
  return x,y

x1,y1 = mysort(x1,y1)
x2,y2 = mysort(x2,y2)
x3,y3 = mysort(x3,y3)

plt.plot(x1, y1, color = 'r', linestyle = 'solid',
         marker = '.',label = "Single")
plt.plot(x2, y2, color = 'g', linestyle = 'solid',
         marker = '.',label = "Married")
plt.plot(x3, y3, color = 'b', linestyle = 'solid',
         marker = '.',label = "Divorced")


# plt.xticks(rotation = 25)
plt.xticks([])
plt.xlabel('Age')
plt.ylabel('Subscription for Deposit Success Rate')
plt.title('Success Rate by Age & Marital Status', fontsize = 20)
plt.grid()
plt.legend()
# plt.show()

plt.savefig("age_marital.png")



