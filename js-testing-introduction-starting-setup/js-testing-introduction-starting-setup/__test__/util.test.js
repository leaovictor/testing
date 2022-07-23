const {generateText} = require('../util');

describe('Prova de saída de dados', () =>{
    test('Saída de nome e idade', () =>{
        const text = generateText('Victor Leão', 37);
        expect(text).toBe('Victor Leão (37 years old)');
    });

    it('Saída com valores nulos', () => {
        const text = generateText('', null);
        expect(text).toBe(' (null years old)');
    });

    it('Saída sem dados', () => {
        const text = generateText('undefined (undefined years old)');
    });

    

});


