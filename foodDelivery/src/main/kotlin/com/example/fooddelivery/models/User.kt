package com.example.fooddelivery.models

import lombok.*
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import java.util.*
import javax.persistence.*

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
@Table(name = "users")
data class User(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var name: String,
    private var password: String,
    private var type: String? = null,
    private var age: Int? = null,
    private var email: String,
    private var phoneNumber: String? = null,
    private var enabled: Boolean = false,

    @OneToMany(fetch = FetchType.LAZY, cascade = [CascadeType.ALL], mappedBy = "user")
    var orders: List<Order>

) :UserDetails {
    override fun getAuthorities(): Collection<GrantedAuthority?>? {
        val simpleGrantedAuthority = SimpleGrantedAuthority("ROLE_USER")
        return Collections.singletonList(simpleGrantedAuthority)
    }
    fun setPassword(password: String){
        this.password = password
    }
    override fun getPassword(): String {
        return password
    }

    override fun getUsername(): String {
        return name
    }
    fun getEmail(): String {
        return email;
    }
    fun setEnabled(){
        enabled = true
    }
    override fun isAccountNonExpired(): Boolean = true

    override fun isAccountNonLocked(): Boolean = true

    override fun isCredentialsNonExpired(): Boolean = true

    override fun isEnabled(): Boolean {
        return enabled
    }
}