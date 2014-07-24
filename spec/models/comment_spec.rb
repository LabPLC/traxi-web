require 'spec_helper'
require 'rails_helper'

describe Comment do
  before do
    @comment = Comment.new(email: "ejemplo@ex.com", nombre: "Ejemplo", comentario: "comentario 1")
  end

  describe "Comment" do
    subject{ @comment }

    it {should respond_to(:email)}
    it {should respond_to(:nombre)}
    it {should respond_to(:comentario)}
    it { should be_valid }

  end

  describe "cuando se crea" do
    subject{@comment}
    describe "con los campos validos" do
      before { @comment.save}
      it { should be_valid}
    end

    describe "sin email" do
      before { @comment.email = nil}
      it {should_not  be_valid}
    end
    describe "sin nombre" do
      before { @comment.nombre = nil}
      it { should_not be_valid}
    end

    describe "sin comentario" do
      before { @comment.comentario = nil}
      it { should_not be_valid}
    end

    describe "con los campos invalidos" do
      before  do
        @comment.email = nil
        @comment.save
      end
      it { should_not be_valid}
    end
  end
end
