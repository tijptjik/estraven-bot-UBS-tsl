[![GitHub release](https://img.shields.io/github/release/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine.svg)](https://pypi.org/project/unicorn-binance-trailing-stop-loss-engine/)
[![GitHub](https://img.shields.io/github/license/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine.svg?color=blue)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/LICENSE)
[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/unicorn-binance-trailing-stop-loss-engine.svg)](https://www.python.org/downloads/)
[![Downloads](https://pepy.tech/badge/unicorn-binance-trailing-stop-loss-engine)](https://pepy.tech/project/unicorn-binance-trailing-stop-loss-engine)
[![PyPI - Wheel](https://img.shields.io/pypi/wheel/unicorn-binance-trailing-stop-loss-engine.svg?label=PyPI%20wheel)](https://pypi.org/project/unicorn-binance-trailing-stop-loss-engine/)
[![PyPI - Status](https://img.shields.io/pypi/status/unicorn-binance-trailing-stop-loss-engine.svg)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/issues) 
[![Python application](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/actions/workflows/python-app.yml/badge.svg)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/actions/workflows/python-app.yml)
[![Total alerts](https://img.shields.io/lgtm/alerts/g/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/alerts/)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/context:python)
[![codecov](https://codecov.io/gh/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/branch/master/graph/badge.svg?token=Z6SEARA4W4)](https://codecov.io/gh/oliver-zehentleitner/unicorn-binance-trailing-stop-loss-engine)
[![Telegram](https://img.shields.io/badge/chat-telegram-yellow.svg)](https://t.me/unicorndevs)

# UNICORN Binance Trailing Stop Loss Engine

[Description](#description) | [Live Demo](#live-demo) | [Installation](#installation-and-upgrade) | [How To](#howto) |
[Documentation](#documentation) | [Examples](#examples) | [Change Log](#change-log) | [Wiki](#wiki) | [Social](#social) |
[Notifications](#receive-notifications) | [Bugs](#how-to-report-bugs-or-suggest-improvements) | 
[Contributing](#contributing) | [Commercial Support](#commercial-support)

--short-description--

Part of ['UNICORN Binance Suite'](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-suite).

```
from unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager import BinanceTrailingStopLossEngineManager

--example-code--
```

## Description

--long-description--

### What are the benefits of the UNICORN Binance Trailing Stop Loss Engine?
- Fully managed websockets and 100% auto-reconnect! Also handles maintenance windows!
- [Supported exchanges](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/Binance-websocket-endpoint-configuration-overview): 

| Exchange | Exchange string | 
| -------- | --------------- | 
| [Binance](https://www.binance.com) | `BinanceTrailingStopLossEngineManager(exchange="binance.com")` |
| [Binance Testnet](https://testnet.binance.vision/) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-testnet")` |
| [Binance Margin](https://www.binance.com) |  `BinanceTrailingStopLossEngineManager(exchange="binance.com-margin")` |
| [Binance Margin Testnet](https://testnet.binance.vision/) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-margin-testnet")` |
| [Binance Isolated Margin](https://www.binance.com) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-isolated_margin")` |
| [Binance Isolated Margin Testnet](https://testnet.binance.vision/) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-isolated_margin-testnet")` |
| [Binance USD-M Futures](https://www.binance.com) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-futures")` |
| [Binance USD-M Futures Testnet](https://testnet.binancefuture.com) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-futures-testnet")` |
| [Binance Coin-M Futures](https://www.binance.com) | `BinanceTrailingStopLossEngineManager(exchange="binance.com-coin_futures")` |
| [Binance US](https://www.binance.us) | `BinanceTrailingStopLossEngineManager(exchange="binance.us")` |
| [Binance TR](https://www.trbinance.com) | `BinanceTrailingStopLossEngineManager(exchange="trbinance.com")` |
| [Binance JEX](https://www.jex.com) | `BinanceTrailingStopLossEngineManager(exchange="jex.com")` |
| [Binance DEX](https://www.binance.org) | `BinanceTrailingStopLossEngineManager(exchange="binance.org")` |
| [Binance DEX Testnet](https://testnet.binance.org) | `BinanceTrailingStopLossEngineManager(exchange="binance.org-testnet")` |

- Streams are processing asynchronous/concurrent (Python asyncio) and each stream is started in a separate thread, so 
you dont need to deal with asyncio in your code!

- No use of the twisted module, so you can use this lib in a daemonized application (compatible with 
[python-daemon](https://pypi.org/project/python-daemon/)).

- Supports 
[subscribe](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.subscribe_to_stream)/[unsubscribe](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.unsubscribe_from_stream)
on all exchanges! (Take a look to the max supported subscriptions per stream in the [endpoint configuration overview](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/Binance-websocket-endpoint-configuration-overview)!)

- [UNICORN Binance Trailing Stop Loss Engine](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine) respects Binance's API guidelines and protects you from avoidable reconnects and bans.

- Support for multiple private `!userData` streams with different `api_key` and `api_secret`. ([example_multiple_userdata_streams.py](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_multiple_userdata_streams.py))

- [Pick up the received data from the `stream_buffer`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html?highlight=get_stream_info#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.pop_stream_data_from_stream_buffer) - 
if you can not store your data in cause of a temporary technical issue, you can 
[kick back the data to the `stream_buffer`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html?highlight=get_stream_info#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.add_to_stream_buffer) 
which stores the receives in the RAM till you are able to process the data in the normal way again. 
[Learn more!](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/%60stream_buffer%60)

- Use separate `stream_buffers` for 
[specific streams](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_stream_buffer_extended.py) 
or 
[users](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_multiple_userdata_streams.py)!

- Watch the `stream_signal_buffer` to receive `CONNECT`, `DISCONNECT` and `FIRST_RECEIVED_DATA` signals about the 
streams! [Learn more!](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/%60stream_signal_buffer%60)

- Get the received data unchanged as received, as Python dictionary or converted with 
[UnicornFy](https://github.com/LUCIT-Systems-and-Development/unicorn-fy) into well-formed Python dictionaries. Use the `output`
parameter of 
[`create_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html?highlight=create_stream#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.create_stream) 
to control the output format.

- Helpful management features like 
[`get_binance_api_status()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_binance_api_status), 
[`get_current_receiving_speed()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_current_receiving_speed), 
[`get_errors_from_endpoints()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_errors_from_endpoints), 
[`get_limit_of_subscriptions_per_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_limit_of_subscriptions_per_stream), 
[`get_request_id()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_request_id), 
[`get_result_by_request_id()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_result_by_request_id),
[`get_results_from_endpoints()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_results_from_endpoints), 
[`get_stream_buffer_length()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_buffer_length), 
[`get_stream_info()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_info), 
[`get_stream_list()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_list), 
[`get_stream_id_by_label()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_id_by_label), 
[`get_stream_statistic()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_statistic), 
[`get_stream_subscriptions()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_subscriptions), 
[`get_version()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_version), 
[`is_update_availabe()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.is_update_availabe), 
[`pop_stream_data_from_stream_buffer()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.pop_stream_data_from_stream_buffer), 
[`print_summary()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.print_summary), 
[`replace_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.replace_stream), 
[`set_stream_label()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.set_stream_label), 
[`set_ringbuffer_error_max_size()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.set_ringbuffer_error_max_size), 
[`subscribe_to_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.subscribe_to_stream), 
[`stop_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.stop_stream),
[`stop_manager_with_all_streams()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.stop_manager_with_all_streams), 
[`unsubscribe_from_stream()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.unsubscribe_from_stream), 
[`wait_till_stream_has_started()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.wait_till_stream_has_started) 
and many more! Explore them 
[here](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html).

- Monitor the status of the created `BinanceTrailingStopLossEngineManager()` instance within your code with 
[`get_monitoring_status_plain()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html?highlight=plain#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_monitoring_status_plain)
and specific streams with 
[`get_stream_info()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.get_stream_info).

- Nice to use with [iPython](https://ipython.org/): 
"IPython (Interactive Python) is a command shell for interactive computing that offers introspection, 
rich media, shell syntax, tab completion, and history." 
([example_interactive_mode.py](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_interactive_mode.py)) 
[![iPython](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/ipython.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_interactive_mode.py) 

- Also nice to use with the [Jupyter Notebook](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/tree/master/ipynb) :)

- [Monitoring API service](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/UNICORN-Monitoring-API-Service) 
and a [check_command](https://exchange.icinga.com/LUCIT/check_lucit_collector) 
for [ICINGA](https://exchange.icinga.com/LUCIT/check_lucit_collector)/Nagios 
[![icinga2-demo](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/icinga.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/UNICORN-Monitoring-API-Service)

- Excessively tested on Linux, Mac and Windows

If you like the project, please [![star](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/star.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/stargazers) it on 
[GitHub](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine)!

## Live Demo
This live demo script is streaming from binance.com!

[Open live monitor!](https://www.lucit.tech/unicorn-binance-trailing-stop-loss-engine.html)

[![live-demo](https://ubwa-demo.lucit.co/ps.png)](https://www.lucit.tech/unicorn-binance-trailing-stop-loss-engine.html)

(Refresh update once a minute!)

## Installation and Upgrade
The module requires Python 3.7 or above, as it depends on Pythons latest asyncio features for asynchronous/concurrent 
processing. 

The current dependencies are listed 
[here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/requirements.txt).

If you run into errors during the installation take a look [here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki/Installation).

### A wheel of the latest release with PIP from [PyPI](https://pypi.org/project/unicorn-binance-trailing-stop-loss-engine/)
`pip install unicorn-binance-trailing-stop-loss-engine --upgrade`
### From source of the latest release with PIP from [Github](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine)
#### Linux, macOS, ...
Run in bash:

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/archive/$(curl -s https://api.github.com/repos/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")').tar.gz --upgrade`
#### Windows
Use the below command with the version (such as 1.35.0) you determined 
[here](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/releases/latest):

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/archive/1.35.0.tar.gz --upgrade`
### From the latest source (dev-stage) with PIP from [Github](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine)
This is not a release version and can not be considered to be stable!

`pip install https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/tarball/master --upgrade`

### [Conda environment](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html), [Virtualenv](https://virtualenv.pypa.io/en/latest/) or plain [Python](https://docs.python.org/2/install/)
Download the [latest release](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/releases/latest) 
or the [current master branch](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/archive/master.zip)
 and use:
- ./environment.yml
- ./requirements.txt
- ./setup.py

## Change Log
[https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/CHANGELOG.html](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/CHANGELOG.html)

## Documentation
- [General](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine)
- [Modules](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html)

## Examples

## Project Homepage
[https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine)

## Wiki
[https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/wiki)

## Social
- [Discussions](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/discussions)
- [https://t.me/unicorndevs](https://t.me/unicorndevs)
- [https://dev.binance.vision](https://dev.binance.vision)
- [https://community.binance.org](https://community.binance.org)

## Receive Notifications
To receive notifications on available updates you can 
[![watch](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/watch.png)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/watchers) 
the repository on [GitHub](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine), write your 
[own script](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/example_version_of_this_package.py) 
with using 
[`is_update_availabe()`](https://lucit-systems-and-development.github.io/unicorn-binance-trailing-stop-loss-engine/unicorn_binance_trailing_stop_loss_engine.html#unicorn_binance_trailing_stop_loss_engine.unicorn_binance_trailing_stop_loss_engine_manager.BinanceTrailingStopLossEngineManager.is_update_availabe).
Follow us on [Twitter](https://twitter.com/LUCIT_SysDev) for general news about the [unicorn-binance-suite](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-suite)!

To receive news (like inspection windows/maintenance) about the Binance API`s subscribe to their telegram groups: 
- [https://t.me/binance_api_announcements](https://t.me/binance_api_announcements)
- [https://t.me/binance_api_english](https://t.me/binance_api_english)
- [https://t.me/BinanceExchange](https://t.me/BinanceExchange)
- [https://t.me/Binance_USA](https://t.me/Binance_USA)
- [https://t.me/Binance_JEX_EN](https://t.me/Binance_JEX_EN)
- [https://t.me/BinanceDEXchange](https://t.me/BinanceDEXchange)

## How to report Bugs or suggest Improvements?
[List of planned features](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/issues?q=is%3Aissue+is%3Aopen+label%3Aenhancement) - 
click ![thumbs-up](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/thumbup.png) if you need one of them or suggest a new feature!

Before you report a bug, [try the latest release](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine#installation-and-upgrade). If the issue still exists, provide the error trace, OS 
and Python version and explain how to reproduce the error. A demo script is appreciated.

If you dont find an issue related to your topic, please open a new [issue](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/issues)!

[Report a security bug!](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/security/policy)

## Contributing
[UNICORN Binance Trailing Stop Loss Engine](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine) is an open 
source project which welcomes contributions which can be anything from simple documentation fixes and reporting dead links to new features. To 
contribute follow 
[this guide](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/blob/master/CONTRIBUTING.md).
 
### Contributors
[![Contributors](https://contributors-img.web.app/image?repo=oliver-zehentleitner/unicorn-binance-trailing-stop-loss-engine)](https://github.com/LUCIT-Systems-and-Development/unicorn-binance-trailing-stop-loss-engine/graphs/contributors)

We ![love](https://raw.githubusercontent.com/lucit-systems-and-development/unicorn-binance-trailing-stop-loss-engine/master/images/misc/heart.png) open source!

## Commercial Support
[![LUCIT](https://www.lucit.tech/files/images/logos/LUCIT-LOGO-TRANS-PLAIN-NEW.png)](https://www.lucit.tech)

Do you need a developer, operator or consultant? 

Contact me for a non-binding initial consultation via my company 
[LUCIT](https://www.lucit.tech) from Vienna (Austria) or via [Telegram](https://t.me/LUCIT_OZ).
