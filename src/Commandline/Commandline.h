

#pragma once

#include <string>
#include <map>

/*
 * Commandline format:
 *
 *
 * SET gpio:10 ON;
 * CLEAR gpio:10;
 * TOGGLE gpio:10;
 * OR gpio 1;
 * 
 * DEF MY_FUNC 1 = SET gpio:%1 ON; WAIT 100; CLEAR gpio:%1;;
 * MY_FUNC 10
 *
 */


namespace CommandlineParser
{


enum Operation {
    SET,
    GET,
    CLEAR,
    TOGGLE,
    AND,
    OR,
    XOR,
    DEF,
    UNKNOWN,
};


struct Token {
    Operation operation;
    std::string target;
    std::string parameters;
};


std::ostream& operator<<(std::ostream&, Token&);



class CommandlineParser {

public:

    CommandlineParser();
    ~CommandlineParser();


    Token parse(const char* input);


private:

    std::map<std::string, Operation> operations;

    Operation get_operation(std::string const& input);

};


}
