file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/model/Player.java
empty definition using pc, found symbol in pc: 
semanticdb not found
empty definition using fallback
non-local guesses:

offset: 576
uri: file:///C:/Users/Mateusz/Desktop/springboot-footballmanager/src/main/java/com/footballmanager/demo/model/Player.java
text:
```scala
package com.footballmanager.demo.model;

import lombok.*;
import jakarta.persistence.*;

@Entity
@Table(name = "players")
@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class Player {
  
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    
    private String firstName;
    private String lastName;
    private int age;
    private int overall;
    private int offensiveStats;
    private int defensiveStats;
    private boolean isInFirstEleven;
    @Column(nullable = false, columnDefinition = "int default 0")
private int@@ marketValue = 0;

    @ManyToOne
    @JoinColumn(name = "team_id")
    private Team team;
}

```


#### Short summary: 

empty definition using pc, found symbol in pc: 