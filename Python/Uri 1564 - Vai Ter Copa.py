while True:
    try:
        print('vai ter copa!' if int(input()) == 0 else 'vai ter duas!')    # Pede a entrada e vai mostrando se vai ter copa ou duas
    except(EOFError):                                                       # EOF
        break