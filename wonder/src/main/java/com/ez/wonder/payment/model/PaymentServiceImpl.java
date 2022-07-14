package com.ez.wonder.payment.model;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService{
	private final PaymentDAO paymentDao;

	@Override
	public int insertPayment(PaymentVO2 vo) {
		return paymentDao.insertPayment(vo);
	}

}
