const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const connection = require('./database/database');
const Pergunta = require('./database/Pergunta');
const Resposta = require('./database/Resposta');
const { raw } = require('body-parser');
//DataBase
connection
.authenticate()
.then(() => {
    console.log("ok")
})
.catch((err) =>{
    console.log('oi'+ err);
})

// Estou dizendo  para o Express usar o EJS como view engine
app.set('view engine', 'ejs');
app.use(express.static('public'));

app.use(express.urlencoded({extended: false}));
app.use(express.json());

app.get('/', (req, res)=>{
    Pergunta.findAll({raw:true, order:[
        ['id','DESC'] //ASC =Crescente || DESC = decrescente
    ]}).then(perguntas =>{
        res.render('index',{
            perguntas: perguntas
        });
    });
});

app.get('/perguntar', (req, res)=>{
    res.render("perguntar");
})

app.post('/salvarpergunta', (req, res)=>{
  var titulo = req.body.titulo;
  var descricao = req.body.descricao;

  Pergunta.create({
      titulo: titulo,
      descricao: descricao
  }).then(() => {
    res.redirect("/");
  });
});

app.get('/pergunta/:id', (req, res) =>{
    var id = req.params.id;
    Pergunta.findOne({
        where:{id: id}
        
    }).then(pergunta =>{
        if(pergunta != undefined){//Pergunta foi achada
            Resposta.findAll({
                where: {perguntaId: pergunta.id},
                order:[
                    ['id','DESC']
                ]
            }).then(respostas =>{
                res.render("pergunta",{
                    pergunta: pergunta,
                    respostas: respostas
                });
            });
        }else{//Não foi encontrada
            res.redirect("/");
        }
    });
})

app.post('/responder', (req, res) =>{
    var corpo = req.body.corpo;
    var perguntaId = req.body.pergunta;

    Resposta.create({
        corpo: corpo,
        perguntaId: perguntaId
    }).then(() =>{
        res.redirect('/pergunta/' +perguntaId);
    });
});

app.listen(4001,(error)=>{
    console.log("Certo!");
})