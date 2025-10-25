.class Lcom/yandex/metrica/impl/ob/m2$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/e9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Qd;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/Qd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Qd;->f()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/e9;->d(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Qd;->g()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 23
    .line 24
    new-instance v1, Lcom/yandex/metrica/impl/ob/Od;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-direct {v1, p1, v3}, Lcom/yandex/metrica/impl/ob/Od;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v3}, Lcom/yandex/metrica/impl/ob/Od;->a(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v5, v3, v5

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v3, v4}, Lcom/yandex/metrica/impl/ob/e9;->l(J)Lcom/yandex/metrica/impl/ob/e9;

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Od;->f()V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/ob/W3;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/W3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/yandex/metrica/impl/ob/Md;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/Md;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Md;->i()Lcom/yandex/metrica/impl/ob/Md;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$l;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hd;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Hd;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Hd;->a()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Hd;->b()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
