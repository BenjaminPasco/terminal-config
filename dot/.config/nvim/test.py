def greet(name):
    """Function to greet a person with their name."""
    return f"Hello, {name}!"


def main():
    # List of names to greet
    names = ["Alice", "Bob", "Charlie"]

    for name in names:
        message = greet(name)
        print(message)

    # Example of a conditional statement
    if len(names) > 2:
        print("We have a large group today!")
    else:
        print("It's a small gathering.")


if __name__ == "__main__":
    main()
