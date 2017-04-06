package com.sajal.shoppingcart.controller;

import java.io.FileOutputStream;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.sajal.shoppingcart.model.Product;
import com.sajal.shoppingcart.dao.BrandDAO;
import com.sajal.shoppingcart.dao.ProductDAO;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private BrandDAO brandDAO;

	private Product product;

	@RequestMapping(value = "/registerProduct", method = RequestMethod.POST)
	String insertProduct(@Valid @ModelAttribute("product") Product p, BindingResult result, Model model,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			model.addAttribute("productList", this.productDAO.product());
			return "forward:/addProduct";
		} else {
			if (p.getId() == 0) {
				this.productDAO.save(p);
				MultipartFile file = p.getFile();
				String filelocation = request.getSession().getServletContext().getRealPath("/resources/images/");
				System.out.println(filelocation);
				String filename = filelocation + "\\" + p.getId() + ".jpg";
				System.out.println(filename);
				try {
					byte b[] = file.getBytes();
					FileOutputStream fos = new FileOutputStream(filename);
					fos.write(b);
					fos.close();
				} catch (Exception e) {
				}
			} else {
				productDAO.update(p);
			}
			return "forward:/addProduct";
		}
	}

	@RequestMapping("/deleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") int id) {
		this.productDAO.delete(id);
		return "redirect:/addProduct";
	}

	@RequestMapping("/editProduct/{id}")
	public String editProduct(@PathVariable("id") int id, Model model) {

		model.addAttribute("product", productDAO.getProductByID(id));
		model.addAttribute("productList", this.productDAO.product());

		return "/admin/AdminProduct";

	}

	@RequestMapping("/allProducts")
	public String showAllProducts() {
		return "/AllProducts";
	}
	
	@RequestMapping("/allProducts/{name}")
	public String showProductsByBrand(@PathVariable("name") String name, Model model) {
		System.out.println(name);
	//	productDAO.getProductByBrand(name);
		model.addAttribute("productsByBrand", productDAO.getProductByBrand(name));
		return "/AllProducts";
	}

	@RequestMapping("/productDetails")
	public String showProductDetails(@ModelAttribute("product") Product p) {
		this.product = p;
		return "/ProductDetails";
	}
}
