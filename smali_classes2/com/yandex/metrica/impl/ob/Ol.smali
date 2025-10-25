.class public final Lcom/yandex/metrica/impl/ob/Ol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/math/BigInteger;

.field private static final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ol;->a:Ljava/math/BigInteger;

    .line 11
    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ol;->b:Ljava/math/BigInteger;

    .line 19
    .line 20
    return-void
.end method

.method public static final a(Ljava/math/BigDecimal;)Lxc/k;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-int v0, v0

    .line 6
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "value.unscaledValue()"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/Ol;->a:Ljava/math/BigInteger;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gtz v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/yandex/metrica/impl/ob/Ol;->b:Ljava/math/BigInteger;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-gez v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    :goto_1
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v1, "bigIntMantissa.divide(BigInteger.TEN)"

    .line 56
    .line 57
    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_0
.end method
