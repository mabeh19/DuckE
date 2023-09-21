

#include <iostream>
#include <sstream>
#include <string>

#include "Commandline.h"




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



std::ostream& operator<<(std::ostream& os, Token& tok)
{
    os << "{" << std::endl 
       << "\tOp: " << tok.operation << std::endl 
       << "\tTarget: " << tok.target << std::endl 
       << "\tParameters: " << tok.parameters << std::endl 
       << "}" << std::endl;
            

    return os;
}


CommandlineParser::CommandlineParser()
{
    #define REG_OP(op) operations[#op] = Operation::op

    REG_OP(SET);
    REG_OP(GET);
    REG_OP(CLEAR);
    REG_OP(TOGGLE);
    REG_OP(AND);
    REG_OP(OR);
    REG_OP(XOR);
    REG_OP(DEF);
}


CommandlineParser::~CommandlineParser()
{

}


Token CommandlineParser::parse(const char* input)
{
    std::string inp = input, op, target, params;
    std::istringstream stream(inp);
    
    std::getline(stream, op, ' ');
    std::getline(stream, target, ' '); 
    std::getline(stream, params, '\0');

    return (Token) {
        .operation = get_operation(op),
        .target = target,
        .parameters = params,
    };
}


Operation CommandlineParser::get_operation(const std::string& input)
{
    Operation op = UNKNOWN;

    if (operations.count(input)) {
        op = operations.at(input);
    }

    return op;
}


}
