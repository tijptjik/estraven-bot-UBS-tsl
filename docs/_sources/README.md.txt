[![Get professional and fast support](https://raw.githubusercontent.com/LUCIT-Systems-and-Development/unicorn-binance-suite/master/images/support/LUCIT-get-professional-and-fast-support.png)](https://www.lucit.tech/get-support.html)

[![GitHub Release](https://img.shields.io/github/release/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss.svg?label=github)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/releases)
[![GitHub Downloads](https://img.shields.io/github/downloads/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/total?color=blue)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/releases)
[![Conda Release](https://img.shields.io/conda/vn/conda-forge/unicorn-binance-trailing-stop-loss.svg?color=blue)](https://anaconda.org/conda-forge/unicorn-binance-trailing-stop-loss)
[![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/unicorn-binance-trailing-stop-loss.svg?color=blue)](https://anaconda.org/conda-forge/unicorn-binance-trailing-stop-loss)
[![PyPi Release](https://img.shields.io/pypi/v/unicorn-binance-trailing-stop-loss?color=blue)](https://pypi.org/project/unicorn-binance-trailing-stop-loss/)
[![PyPi Downloads](https://pepy.tech/badge/unicorn-binance-trailing-stop-loss)](https://pepy.tech/project/unicorn-binance-trailing-stop-loss)
[![License](https://img.shields.io/github/license/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss.svg?color=blue)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/LICENSE)
[![Supported Python Version](https://img.shields.io/pypi/pyversions/unicorn_binance_trailing_stop_loss.svg)](https://www.python.org/downloads/)
[![PyPI - Status](https://img.shields.io/pypi/status/unicorn_binance_trailing_stop_loss.svg)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/issues)
[![Unit Tests](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/actions/workflows/unit-tests.yml/badge.svg)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/actions/workflows/unit-tests.yml)
[![Azure Pipelines](https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/unicorn-binance-trailing-stop-loss-feedstock?branchName=main)](https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=15963&branchName=main)
[![codecov](https://codecov.io/gh/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/branch/master/graph/badge.svg?token=5I03AZ3F5S)](https://codecov.io/gh/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)
[![Read the Docs](https://img.shields.io/badge/read-%20docs-yellow)](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/)
[![Github](https://img.shields.io/badge/source-github-yellow)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)
[![Telegram](https://img.shields.io/badge/chat-telegram-yellow)](https://t.me/unicorndevs)
[![Gitter](https://badges.gitter.im/unicorn-binance-suite/unicorn-binance-trailing-stop-loss.svg)](https://gitter.im/unicorn-binance-suite/unicorn-binance-trailing-stop-loss?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![LUCIT-UBTSL-Banner](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/logo/LUCIT-UBTSL-Banner-Readme.png)](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html)

# UNICORN Binance Trailing Stop Loss

[Description](#description) | [Smart Entry](#smart-entry) | [Installation](#installation-and-upgrade) | 
[Documentation](#documentation) | [Examples](#examples) | [Change Log](#change-log) | [Wiki](#wiki) | [Social](#social) |
[Notifications](#receive-notifications) | [Bugs](#how-to-report-bugs-or-suggest-improvements) | 
[Contributing](#contributing) | [Leave a review](#you-want-to-say-thank-you) | [Disclaimer](#disclaimer) | [Commercial Support](#commercial-support)

A Python library with a [command line interface](https://www.lucit.tech/ubtsl-cli.html) for a trailing stop loss and 
[smart entry](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html#smart-entry) on the Binance exchange.

As [`UNICORN Binance Trailing Stop Loss Bot`](https://www.lucit.tech/unicorn-binance-trailing-stop-loss-bot.html)
we also offer a standalone version that does not require an installed Python environment.

Please read carefully all provided [documentation](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/), our
[disclaimer](#disclaimer) and look in the 
[issues](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/issues) about known 
problems before using this tool - ***you use it at your own risk!***

If you put this engine on a market, you should stop trading manually on this market yourself!

Part of ['UNICORN Binance Suite'](https://www.lucit.tech/unicorn-binance-suite.html).

## How to start the trailing stop loss engine:
```
from unicorn_binance_trailing_stop_loss.manager import BinanceTrailingStopLossManager


def callback_error(msg):
    print(f"STOP LOSS ERROR - ENGINE IS SHUTTING DOWN! - {msg}")
    ubtsl.stop_manager()

def callback_finished(msg):
    print(f"STOP LOSS FINISHED - ENGINE IS SHUTTING DOWN! - {msg}")
    ubtsl.stop_manager()
    
def callback_partially_filled(msg):
    print(f"STOP LOSS PARTIALLY_FILLED - ENGINE IS STILL RUNNING! - {msg}")
    
ubtsl = BinanceTrailingStopLossManager(callback_error=callback_error,
                                       callback_finished=callback_finished,
                                       callback_partially_filled=callback_partially_filled,
                                       binance_public_key="aaa",
                                       binance_private_key="bbb",
                                       borrow_threshold="100%",
                                       exchange="binance.com",
                                       keep_threshold="20%",
                                       market="BTCUSDT",
                                       print_notifications=True,
                                       reset_stop_loss_price=True,
                                       send_to_email_address="blah@example.com",
                                       send_from_email_address="blub@example.com",
                                       send_from_email_password="pass",
                                       send_from_email_server="mail.example.com",
                                       send_from_email_port=25,
                                       stop_loss_limit="1.5%",
                                       stop_loss_order_type="LIMIT",
                                       stop_loss_price=88,
                                       stop_loss_start_limit="0.5%",
                                       telegram_bot_token="telegram_bot_token",
                                       telegram_send_to="telegram_send_to")
```

### Stop the engine:
```
ubtsl.stop_manager()
```

### Get the right [logger](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/example_logging.py):
```
logging.getLogger("unicorn_binance_trailing_stop_loss")
```

[Discover more possibilities](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/unicorn_binance_trailing_stop_loss.html).

## Start the engine on the command line (Windows, Linux and Mac):
```
$ ubtsl --profile BTCUSDT_SELL --stoplosslimit 0.5%
```

Read about the [CLI usage](https://www.lucit.tech/ubtsl-cli.html).

## Description
The Python package [UNICORN Binance Trailing Stop Loss](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html) 
provides a reuseable library and [CLI interface](https://www.lucit.tech/ubtsl-cli.html).

After starting the engine, a stop/loss order is placed on Binance and trailed until it is completely fulfilled. If desired, a 
notification can be sent via email and Telegram afterwards. Then it calls the function 
passed with the `callback_finished` parameter or on error it calls the function passed to `callback_error`. 

Partially filled orders are currently not handled by the engine. If you want to react individually to this event, you 
can use the function provided to `callback_partially_filled`.

In addition, there is a [smart entry](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html#smart-entry) option 
called `jump-in-and-trail`. This offers the possibility to buy spot, future and margin assets with a limit or market 
order and then to trail a stop/loss order until sold.

### What are the benefits of the UNICORN Binance Trailing Stop Loss?
- Using websockets for push notifications about price updates and order status updates. (Fast data transfer and low 
used API weight!)
- [Smart entry](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html#smart-entry)
- Supported exchanges: 

| Exchange                                           | Exchange string               | trail                                                                                                                                     | jump-in-and-trail                                                                                                                                        | 
|----------------------------------------------------|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------| 
| [Binance](https://www.binance.com)                 | `binance.com`                 | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) | ![no](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/x-icon.png)                  |
| [Binance Testnet](https://testnet.binance.vision/) | `binance.com-testnet`         | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) | ![no](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/x-icon.png)                  |
| [Binance Futures](https://www.binance.com)         | `binance.com-futures`         | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/x-icon.png)                 |
| [Binance Isolated Margin](https://www.binance.com) | `binance.com-isolated_margin` | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) (experimental) |
| [Binance Margin](https://www.binance.com)          | `binance.com-margin`          | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/ok-icon.png) | ![yes](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/x-icon.png)                 |

- All parameters that expect numbers can be configured with fixed numerical values as well as with percentage values.
- Integrated notification system (e-Mail and Telegram).
- Test "notification", "binance-connectivity" and "streams" without starting the engine.
- Powered by [UNICORN Binance REST API](https://www.lucit.tech/unicorn-binance-rest-api.html) and 
[UNICORN Binance WebSocket API](https://www.lucit.tech/unicorn-binance-websocket-api.html).
- Well tested on Linux, Mac and Windows.

If you like the project, please [![star](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/star.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/stargazers) it on 
[GitHub](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)!

### Smart entry
***This function is still in an experimental phase and only available for Isolated Margin.***

Do a smart entry by using `engine = 'jump-in-and-trail'` and providing `borrow_threshold`.

By activating the `jump-in-and-trail` engine, the engine first buys the predefined asset amount and then trails them 
automatically. 

## Installation and Upgrade
The module requires Python 3.7 or above.

The current dependencies are listed 
[here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/requirements.txt).

If you run into errors during the installation take a look [here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/wiki/Installation).

If you just want to install the `UNICORN Binance Trailing Stop Loss Bot` read 
[this!](https://www.lucit.tech/unicorn-binance-trailing-stop-loss-bot.html)

### A wheel and a source file of the latest release with `pip` from [PyPI](https://pypi.org/project/unicorn-binance-trailing-stop-loss/)
`pip install unicorn-binance-trailing-stop-loss --upgrade`

### A conda package of the latest release with `conda` from [Anaconda](https://anaconda.org/conda-forge/unicorn-fy) via [CONDA-FORGE](https://conda-forge.org).
`conda install -c conda-forge unicorn-binance-trailing-stop-loss`

`conda update -c conda-forge unicorn-binance-trailing-stop-loss`

### From source of the latest release with PIP from [Github](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)
#### Linux, macOS, ...
Run in bash:

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/archive/$(curl -s https://api.github.com/repos/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")').tar.gz --upgrade`

#### Windows
Use the below command with the version (such as 0.7.0) you determined 
[here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/releases/latest):

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/archive/0.7.0.tar.gz --upgrade`
### From the latest source (dev-stage) with PIP from [Github](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)
This is not a release version and can not be considered to be stable!

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/tarball/master --upgrade`

### [Conda environment](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html), [Virtualenv](https://virtualenv.pypa.io/en/latest/) or plain [Python](https://docs.python.org/2/install/)
Download the [latest release](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/releases/latest) 
or the [current master branch](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/archive/master.zip)
 and use:

- ./environment.yml
- ./requirements.txt
- ./setup.py

## Change Log
[https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/CHANGELOG.html](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/CHANGELOG.html)

## Documentation
- [General](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech)
- [Modules](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/unicorn_binance_trailing_stop_loss.html)
- [CLI](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/CLI.html)
- [Bot](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/Bot.html)

## Examples
- [example_logging.py](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/example_logging.py)

## Project Homepage
[https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)

## Wiki
[https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/wiki](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/wiki)

## Social
- [Discussions](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/discussions)
- [https://t.me/unicorndevs](https://t.me/unicorndevs)
- [https://dev.binance.vision](https://dev.binance.vision)
- [https://community.binance.org](https://community.binance.org)

## Receive Notifications
To receive notifications on available updates you can 
[![watch](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/watch.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/watchers) 
the repository on [GitHub](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss), write your 
[own script](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/example_version_of_this_package.py) 
with using 
[`is_update_available()`](https://unicorn-binance-trailing-stop-loss.docs.lucit.tech/unicorn_binance_trailing_stop_loss.html#unicorn_binance_trailing_stop_loss.manager.BinanceWebSocketApiManager.is_update_availabe) 
or you use the 
[monitoring API service](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/wiki/UNICORN-Monitoring-API-Service).

Follow us on [Twitter](https://twitter.com/LUCIT_SysDev) or on [Facebook](https://www.facebook.com/lucit.systems.and.development) for general news about the [unicorn-binance-suite](https://www.lucit.tech/unicorn-binance-suite.html)!

To receive news (like inspection windows/maintenance) about the Binance API`s subscribe to their telegram groups: 

- [https://t.me/binance_api_announcements](https://t.me/binance_api_announcements)
- [https://t.me/binance_api_english](https://t.me/binance_api_english)
- [https://t.me/Binance_JEX_EN](https://t.me/Binance_JEX_EN)
- [https://t.me/Binance_USA](https://t.me/Binance_USA)
- [https://t.me/TRBinanceTR](https://t.me/TRBinanceTR)
- [https://t.me/BinanceDEXchange](https://t.me/BinanceDEXchange)
- [https://t.me/BinanceExchange](https://t.me/BinanceExchange)

## How to report Bugs or suggest Improvements?
[List of planned features](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement) - 
click ![thumbs-up](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/thumbup.png) if you need one of them or suggest a new feature!

Before you report a bug, [try the latest release](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss#installation-and-upgrade). If the issue still exists, provide the error trace, OS 
and Python version and explain how to reproduce the error. A demo script is appreciated.

If you dont find an issue related to your topic, please open a new [issue](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/issues)!

[Report a security bug!](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/security/policy)

## Contributing
[UNICORN Binance Trailing Stop Loss](https://www.lucit.tech/unicorn-binance-trailing-stop-loss.html) is an open 
source project which welcomes contributions which can be anything from simple documentation fixes and reporting dead links to new features. To 
contribute follow 
[this guide](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/blob/master/CONTRIBUTING.md).
 
### Contributors
[![Contributors](https://contributors-img.web.app/image?repo=LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss/graphs/contributors)

We ![love](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss/master/images/misc/heart.png) open source!

## You want to say Thank You?
We hope you are enjoying using our libraries and that they are proving to be useful to you. If you have a moment, we would greatly appreciate it if you could leave us a [review on Google](https://g.page/r/CbfHlcs8BfG8EAg/review). Thank you for your support!

## Disclaimer
This project is for informational purposes only. You should not construe this information or any other material as 
legal, tax, investment, financial or other advice. Nothing contained herein constitutes a solicitation, recommendation, 
endorsement or offer by us or any third party provider to buy or sell any securities or other financial instruments in 
this or any other jurisdiction in which such solicitation or offer would be unlawful under the securities laws of such 
jurisdiction.

***If you intend to use real money, use it at your own risk.***

Under no circumstances will we be responsible or liable for any claims, damages, losses, expenses, costs or liabilities 
of any kind, including but not limited to direct or indirect damages for loss of profits.

## Commercial Support

[![Get professional and fast support](https://raw.githubusercontent.com/LUCIT-Systems-and-Development/unicorn-binance-suite/master/images/support/LUCIT-get-professional-and-fast-support.png)](https://www.lucit.tech/get-support.html)

***Do you need a developer, operator or consultant?*** [Contact us](https://www.lucit.tech/contact.html) for a non-binding initial consultation!
