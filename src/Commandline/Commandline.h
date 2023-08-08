

#pragma once

#include <string>

namespace CommandlineParser
{


enum Operation {

};


struct Token {
    std::string target;
    std::string operand;
    Operation operation;
};


class CommandlineParser {

public:

    CommandlineParser();
    ~CommandlineParser();


    

};
}
