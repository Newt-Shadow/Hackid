.class public Lcom/yandex/metrica/profile/BirthDateAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Pe;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Pe;

    .line 5
    .line 6
    new-instance v1, Lcom/yandex/metrica/impl/ob/Dn;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/yandex/metrica/impl/ob/Xe;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Xe;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "appmetrica_birth_date"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/yandex/metrica/impl/ob/Pe;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 22
    .line 23
    return-void
.end method

.method private b(I)Ljava/util/Calendar;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private c(II)Ljava/util/Calendar;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    .line 9
    .line 10
    sub-int/2addr p2, v1

    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private d(III)Ljava/util/Calendar;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    .line 9
    .line 10
    sub-int/2addr p2, v1

    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 8

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v7, Lcom/yandex/metrica/impl/ob/Ye;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/yandex/metrica/impl/ob/Ym;

    .line 25
    .line 26
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ym;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/yandex/metrica/impl/ob/Dn;

    .line 30
    .line 31
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 32
    .line 33
    .line 34
    move-object v1, v7

    .line 35
    move-object v6, p3

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/Ye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Ke;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v7}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public withAge(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int/2addr v0, p1

    .line 13
    invoke-direct {p0, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->b(I)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/Me;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "yyyy"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public withAgeIfUndefined(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sub-int/2addr v0, p1

    .line 13
    invoke-direct {p0, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->b(I)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/We;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "yyyy"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public withBirthDate(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/profile/BirthDateAttribute;->b(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/Me;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(II)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->c(II)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/Me;

    iget-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v0, "yyyy-MM"

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(III)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/profile/BirthDateAttribute;->d(III)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/Me;

    iget-object p3, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string p3, "yyyy-MM-dd"

    .line 7
    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDate(Ljava/util/Calendar;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/Me;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Me;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v1, "yyyy-MM-dd"

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(I)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/profile/BirthDateAttribute;->b(I)Ljava/util/Calendar;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/We;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 2
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v1, "yyyy"

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(II)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->c(II)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/We;

    iget-object v0, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v0, "yyyy-MM"

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(III)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/profile/BirthDateAttribute;->d(III)Ljava/util/Calendar;

    move-result-object p1

    new-instance p2, Lcom/yandex/metrica/impl/ob/We;

    iget-object p3, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 8
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string p3, "yyyy-MM-dd"

    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withBirthDateIfUndefined(Ljava/util/Calendar;)Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/We;

    iget-object v1, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Pe;->c()Lcom/yandex/metrica/impl/ob/Je;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/We;-><init>(Lcom/yandex/metrica/impl/ob/Je;)V

    const-string v1, "yyyy-MM-dd"

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Ke;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    return-object p1
.end method

.method public withValueReset()Lcom/yandex/metrica/profile/UserProfileUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Ve;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/profile/BirthDateAttribute;->a:Lcom/yandex/metrica/impl/ob/Pe;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Pe;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/yandex/metrica/impl/ob/Dn;

    .line 12
    .line 13
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Dn;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/yandex/metrica/impl/ob/Xe;

    .line 17
    .line 18
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Xe;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Ve;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Je;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;-><init>(Lcom/yandex/metrica/impl/ob/bf;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
