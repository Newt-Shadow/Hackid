.class Lcom/yandex/metrica/impl/ob/m2$k;
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
    name = "k"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Md;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Md;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "_boundentrypreferences"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lcom/yandex/metrica/impl/ob/Md;->H:Lcom/yandex/metrica/impl/ob/Rd;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/yandex/metrica/impl/ob/Md;->I:Lcom/yandex/metrica/impl/ob/Rd;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-wide/16 v5, -0x1

    .line 34
    .line 35
    invoke-interface {p1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    cmp-long v4, v7, v5

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    new-instance v4, Lcom/yandex/metrica/impl/ob/s$a;

    .line 46
    .line 47
    invoke-direct {v4, v2, v7, v8}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/Md;->a(Lcom/yandex/metrica/impl/ob/s$a;)Lcom/yandex/metrica/impl/ob/Md;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Kd;->b()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Rd;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method
