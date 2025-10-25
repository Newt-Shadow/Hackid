.class Lcom/yandex/metrica/impl/ob/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/yandex/metrica/impl/ob/dg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/gg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/gg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9

    .line 1
    const-string v0, "content://com.huawei.appmarket.commondata/item/5"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->a(Lcom/yandex/metrica/impl/ob/gg;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->a(Lcom/yandex/metrica/impl/ob/gg;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/gg;->a(Lcom/yandex/metrica/impl/ob/gg;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/gg;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/gg;->b(Lcom/yandex/metrica/impl/ob/gg;)Landroid/database/Cursor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x2

    .line 96
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    new-instance v0, Lcom/yandex/metrica/impl/ob/dg;

    .line 101
    .line 102
    sget-object v8, Lcom/yandex/metrica/impl/ob/dg$a;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    invoke-direct/range {v2 .. v8}, Lcom/yandex/metrica/impl/ob/dg;-><init>(Ljava/lang/String;JJLcom/yandex/metrica/impl/ob/dg$a;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0
.end method
