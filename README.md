# Jscpd action

This action run jscpd to find code duplicates.

## Inputs

## `path`

**Required** The src root path to check. Default `./src`.

## Outputs

## `output`

The output of jscpd action

## Example usage

uses: actions/jscpd-check@v1
with:
  path: './src/views'