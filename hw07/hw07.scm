lambda_line = read_line("(lambda (a b c) (+ a b c))")
lambda_proc = do_lambda_form(lambda_line.rest, env)
lambda_proc.formals