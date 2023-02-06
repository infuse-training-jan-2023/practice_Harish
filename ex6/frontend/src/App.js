import { useState,useEffect} from 'react';
import { Route, Routes , Link} from 'react-router-dom';
import './App.css';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import InputGroup from 'react-bootstrap/InputGroup';
import Card from 'react-bootstrap/Card';


function Adduser(){
  return(
    <>
    <h1>Simple Todo List</h1>
    <Form action ="http://localhost:8000/addtask" method="post">
    <InputGroup className="mb-3">
        <Form.Control
          placeholder="task....."
          aria-label="task"
          name="task"
          aria-describedby="basic-addon2"
        />
        <Button type="submit"variant="flat" size="xl" id="button-addon2">
          Add
        </Button>
      </InputGroup>
      </Form>
      <h4><Link to="/view">Display All Tasks</Link></h4>
    </>
  )
}

const Viewuser = () => {
let [data, SetData] = useState([]);
const fetchData = async () => {
  const response = await fetch(
      `http://localhost:8000/view`
    );
  let data_res = await response.json();
  SetData(data_res)
};  
useEffect(() => {
      fetchData();
  },[]);

  return(
    <>
    <h1><Link to="/">Simple Todo List</Link></h1>
    <Card style={{ width: '18rem' }}>
    <div>{data.map((li)=>{return(<h2>{li.task}</h2>)})}</div>
    </Card>
    </>
  )
};

function App() {
  return (
    <>
    <Routes>
      <Route path="/" element={<Adduser/>} />
      <Route path="/view" element={<Viewuser/>} />
    </Routes></>
  );
}


export default App;
