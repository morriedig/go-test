package main

import (
	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type Me_20190701_122521 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &Me_20190701_122521{}
	m.Created = "20190701_122521"

	migration.Register("Me_20190701_122521", m)
}

// Run the migrations
func (m *Me_20190701_122521) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update

}

// Reverse the migrations
func (m *Me_20190701_122521) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update

}
