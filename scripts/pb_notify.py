import argparse
from pushbullet import Pushbullet

pb = Pushbullet('<YOUR API KEY>')

def push_note( msg ):
  push = pb.push_note("<YOUR TITLE>", msg)



if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Send Pushbullet Messages')
    parser.add_argument('--msg', type=str, required=True,
                    help='Your Message')
    args = parser.parse_args()

    msg = args.msg

    push_note( msg ) 