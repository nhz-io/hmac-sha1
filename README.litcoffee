# HMAC-SHA1 digest

[![Travis Build][travis]](https://travis-ci.org/nhz-io/nhz-io-hmac-sha1)
[![NPM Version][npm]](https://www.npmjs.com/package/@nhz.io/hmac-sha1)

    crypto = require 'crypto'

Curry `secret` to allow reuse

    hmacSha1 = (secret) -> (message) ->

      hmac = crypto.createHmac 'sha1', secret

      hmac.update message, 'utf8'

      hmac.digest 'hex'

    digest = (secret, message) ->

Start curried

      hmac = hmacSha1 secret

Complete invocation if possible

      if message then hmac message else hmac

## Exports

    module.exports = digest

## Test

    assert = require 'assert'

    pass = '0caf649feee4953d87bf903ac1176c45e028df16'

Test curried

    assert.strictEqual ((digest 'secret') 'message'), pass

Test full args

    assert.strictEqual (digest 'secret', 'message'), pass

    console.log 'pass'

## Version 1.0.1

## License [MIT](LICENSE)

[travis]: https://img.shields.io/travis/nhz-io/nhz-io-hmac-sha1.svg?style=flat
[npm]: https://img.shields.io/npm/v/@nhz.io/hmac-sha1.svg?style=flat
