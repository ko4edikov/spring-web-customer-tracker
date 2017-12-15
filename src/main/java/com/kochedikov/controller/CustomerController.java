package com.kochedikov.controller;

import com.kochedikov.entity.Customer;
import com.kochedikov.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    /* It provides list of employees in model object */
    @GetMapping("/list")
    public String getCustomers(Model model) {
        List<Customer> customerList = customerService.getCustomers();
        model.addAttribute("customers", customerList);

        return "list-customers";
    }

    /* It displays object data into form for the given id.
     * The @PathVariable puts URL data into variable.*/
    @GetMapping(value = {"/update/{id}"})
    public String addOrUpdateCustomer(Model model, @PathVariable("id") int id) {
        String page;
        Customer customer;
        if (id == 0) {
            customer = new Customer();
            page = "add-customer";
        } else {
            customer = customerService.getCustomer(id);
            page = "update-customer";
        }
        model.addAttribute("customer", customer);
        return page;
    }


    /* It updates model object. */
    @GetMapping("/updateAction")
    public String addOrUpdateCustomer(@ModelAttribute("customer") Customer customer) {


        customerService.saveOrUpdateCustomer(customer);

        return "redirect:/customer/list";
    }

    /* It deletes record for the given id in URL and redirects to /customer/list */
    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable("id") int id) {
        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }

    @PostMapping("/add")
    public String addCustomer(@ModelAttribute("newCustomer") Customer customer) {
        customerService.addCustomer(customer);

        return "redirect:/customer/list";
    }
}
