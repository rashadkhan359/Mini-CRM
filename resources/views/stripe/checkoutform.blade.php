<form action="{{ route('payment.process') }}" method="POST" >
    @csrf    
    <input type="hidden" name="itemname" value="{{ $data['itemname'] }}" />
    <input type="hidden" name="description" value="{{ $data['description'] }}" />
    <input type="hidden" name="amount" value="{{ $data['amount'] }}" />   
    <script
          src="https://checkout.stripe.com/checkout.js"
          class="stripe-button"
          data-key="{{ env('STRIPE_KEY') }}"
          data-name="{{ $data['itemname'] }}"
          data-description="{{ $data['description'] }}"
          data-amount="{{ $data['amount'] * 100 }}"
          data-currency="inr">
        </script>
</form>