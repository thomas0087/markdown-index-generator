# markdown-index-generator

Generate markdown indexes for your github README files.

For example the following files:

```
$ tree
.
├── one.md
├── README.md
├── second_example
│   ├── README.md
│   └── janrain.md
```

become:

```
* [First](first.md)
* [Second example](second_example/README.md)
  * [Third](second_example/third.md)
```

## Requirements

Ruby and tree are required to run the markdown index generator.

#### OSX install

```bash
$ brew install tree
$ brew install ruby
```

#### Linux install

There's a good chance tree is already installed, if not it's available from your package manager. For Fedora:

```bash
$ dnf install tree
$ dnf install ruby
```

## Usage

Download the `markdown_index_generator.rb` file to your machine then run it.

```bash
$ ruby markdown_index_generator.rb
```

By default it uses the current directory but it also accepts a path to a directory.

```bash
$ ruby markdown_index_generator.rb /home/me/the-big-project
```
