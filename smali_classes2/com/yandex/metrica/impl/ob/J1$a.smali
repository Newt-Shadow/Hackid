.class Lcom/yandex/metrica/impl/ob/J1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Ge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B
    .locals 3

    .line 1
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    :try_start_0
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qe;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dg;->a([B)Lcom/yandex/metrica/impl/ob/dg;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Lcom/yandex/metrica/impl/ob/sf;

    .line 21
    .line 22
    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/sf;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-array v1, v0, [B

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    iput-object v1, p2, Lcom/yandex/metrica/impl/ob/sf;->a:[B

    .line 37
    .line 38
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/dg;->b:J

    .line 39
    .line 40
    iput-wide v1, p2, Lcom/yandex/metrica/impl/ob/sf;->c:J

    .line 41
    .line 42
    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 43
    .line 44
    iput-wide v1, p2, Lcom/yandex/metrica/impl/ob/sf;->b:J

    .line 45
    .line 46
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v1, 0x1

    .line 53
    if-eq p1, v1, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-eq p1, v1, :cond_1

    .line 57
    .line 58
    move v1, v0

    .line 59
    :cond_1
    iput v1, p2, Lcom/yandex/metrica/impl/ob/sf;->d:I

    .line 60
    .line 61
    invoke-static {p2}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-object p1

    .line 66
    :catchall_0
    :cond_2
    new-array p1, v0, [B

    .line 67
    .line 68
    return-object p1
.end method
