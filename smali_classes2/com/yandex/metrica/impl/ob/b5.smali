.class public Lcom/yandex/metrica/impl/ob/b5;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/M5;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->j()Lcom/yandex/metrica/impl/ob/M5;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b5;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/M5;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/M5;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/b5;->b:Lcom/yandex/metrica/impl/ob/M5;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b5;->b:Lcom/yandex/metrica/impl/ob/M5;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->g()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/M5;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/D0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/D0;)Lcom/yandex/metrica/impl/ob/c0;

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method
