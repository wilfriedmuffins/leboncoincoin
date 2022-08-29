require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/sales", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Sale. As you add validations to Sale, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Sale.create! valid_attributes
      get sales_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      sale = Sale.create! valid_attributes
      get sale_url(sale)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_sale_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      sale = Sale.create! valid_attributes
      get edit_sale_url(sale)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Sale" do
        expect {
          post sales_url, params: { sale: valid_attributes }
        }.to change(Sale, :count).by(1)
      end

      it "redirects to the created sale" do
        post sales_url, params: { sale: valid_attributes }
        expect(response).to redirect_to(sale_url(Sale.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Sale" do
        expect {
          post sales_url, params: { sale: invalid_attributes }
        }.to change(Sale, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post sales_url, params: { sale: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sale" do
        sale = Sale.create! valid_attributes
        patch sale_url(sale), params: { sale: new_attributes }
        sale.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the sale" do
        sale = Sale.create! valid_attributes
        patch sale_url(sale), params: { sale: new_attributes }
        sale.reload
        expect(response).to redirect_to(sale_url(sale))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        sale = Sale.create! valid_attributes
        patch sale_url(sale), params: { sale: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested sale" do
      sale = Sale.create! valid_attributes
      expect {
        delete sale_url(sale)
      }.to change(Sale, :count).by(-1)
    end

    it "redirects to the sales list" do
      sale = Sale.create! valid_attributes
      delete sale_url(sale)
      expect(response).to redirect_to(sales_url)
    end
  end
end
