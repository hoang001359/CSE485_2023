<?php
class Student {
  private $id;
  private $name;
  private $age;

  public function getId() {
    return $this->id;
  }

  public function setId($id) {
    $this->id = $id;
  }

  public function getName() {
    return $this->name;
  }

  public function setName($name) {
    $this->name = $name;
  }

  public function getAge() {
    return $this->age;
  }

  public function setAge($age) {
    $this->age = $age;
  }
}

// Sử dụng lớp Student
$student = new Student();
$student->setId(345);
$student->setName("Phạm Công Khanh");
$student->setAge(20);

echo "Student ID: " . $student->getId() . "<br>";
echo "Student Name: " . $student->getName() . "<br>";
echo "Student Age: " . $student->getAge() . "<br>";
?>