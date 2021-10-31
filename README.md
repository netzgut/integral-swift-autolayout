# ∫ Integral Swift AutoLayout


An attempt to simplify creating AutoLayout constraints.

This package includes two approaches: Extensions and Custom Opterators.

WARNING: It's still WIP and mostly untested.

## Extensions

Simplifying the API by removing the redundant (arumgent)names:

```swift
// BEFORE
view.topAnchor.constraint(equalTo: other.topAnchor, constant: 5.0)

// AFTER
view.topAnchor.equalTo(other.topAnchor, 5.0)
```

## Custom Operators

A more visual approach: `anchor <assignment> (anchor or expression)`

### Assignment (Dimension/ X-Axis / Y-Axis)

| Operator | Equivalent
| :------: | ------------------------------
| `\|==\|` | `equalTo...`
| `\|<=\|` | `lessThanOrEqualTo...`
| `\|>=\|` | `greaterThanOrEqualTo...)`

### Assignment (X-Axis / Y-Axis)

| Operator | Equivalent
| :------: | ------------------------------
| `\|=~\|` | `equalToSystemSpacing...`
| `\|<~\|` | `lessThanOrEqualToSystemSpacing...`
| `\|>~\|` | `greaterThanOrEqualToSystemSpacing...)`

### Expressions

| Operator | Equivalent
| :------: | ------------------------------
| `+`      | Constant (right-side only)
| `-`      | Negative constant (right-side only)
| `*`      | Multiplier (left-side only)


### Priority / Identifier

| Operator | Right-hand-side type      | Action
| :------: | ------------------------- | --------------------
| `~~`     | `UILayoutPriorty`/`Float` | Sets `.priority`
| `~~`     | `String`                  | Sets `.identifier`


## Examples

```swift
// BEFORE

let constraint = left.rightAnchor.constraint(equalsTo: right.leftAnchor, constant: 8.0)
constraint.priority = .required
constraint.identifier = "Left-To-Right"

// AFTER
let constraint = left.rightAnchor |==| right.leftAnchor + 8.0 ~~ .required ~~ "Left-To-Right"
```

## Licence

MIT. See LICENSE.md
