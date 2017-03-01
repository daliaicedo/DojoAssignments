if __name__ == '__main__':
    print 'Input two strings and a number'
    print 'Let''s start with first string:'
    a = raw_input()
    print 'Now let''s start with the second string:'
    b =  raw_input()
    print 'And last, I need a number: '
    c = int(raw_input())
    for i in range(c):
        print '{}:'.format(i)
        print 'this is a: {}'.format(a)
        print 'this is b: {}'.format(b)
    

