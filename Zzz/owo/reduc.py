def write_header(file, problem_name, n, m):
    if problem_name : file.write('c ' + problem_name + ' to SAT\n')
    file.write(f'p cnf {n} f{m}\n')


def write_clauses(infile, out, read_instance, clause_writers, calc_n, calc_m, problem_name=''):
    
    with open(infile, "r") as file: inst = read_instance(file)

    with open(out, "w") as outfile: 

        write_header(outfile, problem_name, calc_n(inst), calc_m(inst))
        for w in clause_writers: w(file, inst)

