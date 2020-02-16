package com.company;

import org.junit.Assert;
import org.junit.Test;

public class kalkulatorTest {

    @Test
    public void suma() {
        Assert.assertEquals(kalkulator.Suma(2,2),4);
    }

    @Test
    public void roznica() {
        Assert.assertEquals(kalkulator.Roznica(3,2),1);
    }

    @Test
    public void iloczyn() {
        Assert.assertEquals(kalkulator.Iloczyn(2,3),6);
    }
}