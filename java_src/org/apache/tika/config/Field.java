package org.apache.tika.config;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD, ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2.dex */
public @interface Field {
    String name() default "#default";

    boolean required() default false;
}
