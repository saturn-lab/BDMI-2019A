#!/usr/bin/python3
import time 

class Solution:
    def __init__(self):
        self.name = 'basic'
        pass

    def run(self,data):
        t_s = time.time()
        data = self._run(data)
        t_e = time.time()
        print('{} total use time: {}s'.format(self.name, t_e-t_s ))
        return data

    def _run(self,data):
        pass

class Solution1(Solution):
    def __init__(self):
        self.name = 'Solution1'

    def _run(self,data):
        data_out = []
        sort_time = 0
        for line in data:
            a = [a0*a0 for a0 in line]
            sort_time_s = time.time()
            a = self.my_sort(a)
            sort_time += time.time()-sort_time_s
            data_out.append(a)
        print('{} sort time: {}s'.format(self.name,sort_time))
        return data_out

    def my_sort(self,a):
        a.sort()
        return a


class Solution2(Solution1):
    def __init__(self):
        self.name = 'Solution2'

    def my_sort(self,a_t):
        i = 0
        j = len(a_t)-1
        if j<0:
            return []
        a = []
        i_value = a_t[i]
        j_value = a_t[j]
        while i<j:
            if i_value>j_value:
                a.append(i_value)
                i+=1
                i_value = a_t[i]
            else:
                a.append(j_value)
                j-=1
                j_value = a_t[j]
        a.append(i_value)
        a  = a[::-1] 
        return a

def read_file():
    data = []
    f = open('pro2_in.txt','r')
    lines = f.readlines()
    for line in lines:
        line = line.strip()
        a = eval(line)
        data.append(a)
    f.close()
    return data

def write_file(data):
    f_out = open('pro2_out.txt','w')
    for line in data:
        f_out.write('{}\n'.format(line))
    f_out.close()

def check_solution(d1,d2):
    if d1 == d2:
        print('The two solution results are the same.')
    else:
        print('The two solution results are different.')

if __name__ == '__main__':
    in_data = read_file()

    solution = Solution1()
    out_data1 = solution.run(in_data)

    solution = Solution2()
    out_data2 = solution.run(in_data)

    check_solution(out_data1,out_data2)

    write_file(out_data1)




