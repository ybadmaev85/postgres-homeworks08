from utils import *


def main():
    employers_id_list = ['3776', '3127', '4934', '78638', '2245', '599', '10156', '3529', '907345', '740']
    database = choose_bd(employers_id_list)

    menu(database)


if __name__ == '__main__':
    main()
