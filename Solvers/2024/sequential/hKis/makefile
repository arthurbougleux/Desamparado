all:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build"
kissat:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" kissat
tissat:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" tissat
clean:
	rm -f "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis"/makefile
	rm -f "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis"/src/makefile
	-$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" clean
	rm -rf "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build"
coverage:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" coverage
format:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" format
test:
	$(MAKE) -C "/home/arthur/Desktop/Desamparado/Solvers/2024/sequential/hKis/build" test
.PHONY: all clean coverage format kissat test tissat
