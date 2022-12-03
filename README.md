![logo](logo.png "Cryptocurrency CLI monitor - Docker Image (Multiarch)")

Cryptocurrency CLI monitor - Docker Image (Multiarch)
====================================================

[![latest release](https://img.shields.io/github/release/jaymoulin/docker-coinmon.svg "latest release")](http://github.com/jaymoulin/docker-coinmon/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/jaymoulin/coinmon.svg)](https://hub.docker.com/r/jaymoulin/coinmon/)
[![Docker stars](https://img.shields.io/docker/stars/jaymoulin/coinmon.svg)](https://hub.docker.com/r/jaymoulin/coinmon/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/jaymoulin)
[![Buy me a coffee](https://storage.ko-fi.com/cdn/kofi2.png "Buy me a coffee")](https://www.ko-fi.com/jaymoulin)

DISCLAIMER: As-of 2021, this product does not have a free support team anymore. If you want this product to be maintained, please support on Patreon.

(This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

> 💰 Cryptocurrency price ticker CLI.

Check cryptocurrencies' prices, changes on your console.
Best CLI tool for those who are both **Crypto investors** and **Engineers**.

This Docker image is base upon [Coinmon](https://github.com/bichenkk/coinmon)

## Install

In order to use coinmon, make sure that you have [Docker](https://www.docker.com/) installed.

```
$ docker run --rm -t jaymoulin/coinmon
```

## Usage

To check the top 10 cryptocurrencies ranked by their market cap, simply enter
```
$ docker run --rm -t jaymoulin/coinmon
```

## Options

You can use the `-c` (or `--convert`) with the fiat currency symbol to find in terms of another currency.
The default currency is USD and it supports AUD, BRL, CAD, CHF, CLP, CNY, CZK, DKK, EUR, GBP, HKD, HUF, IDR, ILS, INR, JPY, KRW, MXN, MYR, NOK, NZD, PHP, PKR, PLN, RUB, SEK, SGD, THB, TRY, TWD, ZAR.

```
$ docker run --rm -t jaymoulin/coinmon -c eur // convert prices to Eurodollars
$ docker run --rm -t jaymoulin/coinmon -c jpy // convert prices to the Japanese yen
```


Appendixes
---

### Install Docker

If you don't have Docker installed yet, you can do it easily in one line using this command
 
```
curl -sSL "https://gist.githubusercontent.com/jaymoulin/e749a189511cd965f45919f2f99e45f3/raw/0e650b38fde684c4ac534b254099d6d5543375f1/ARM%2520(Raspberry%2520PI)%2520Docker%2520Install" | sudo sh && sudo usermod -aG docker $USER
```
