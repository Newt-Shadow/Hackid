.class public final Le7/e;
.super Lcom/google/crypto/tink/shaded/protobuf/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/e$b;
    }
.end annotation


# static fields
.field public static final AES_CTR_KEY_FORMAT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Le7/e;

.field public static final HMAC_KEY_FORMAT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/w0;"
        }
    .end annotation
.end field


# instance fields
.field private aesCtrKeyFormat_:Le7/g;

.field private hmacKeyFormat_:Le7/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le7/e;

    .line 2
    .line 3
    invoke-direct {v0}, Le7/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 7
    .line 8
    const-class v1, Le7/e;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->Q(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic U()Le7/e;
    .locals 1

    .line 1
    sget-object v0, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic V(Le7/e;Le7/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/e;->b0(Le7/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Le7/e;Le7/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/e;->c0(Le7/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Z()Le7/e$b;
    .locals 1

    .line 1
    sget-object v0, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->p()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Le7/e$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static a0(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/e;
    .locals 1

    .line 1
    sget-object v0, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->K(Lcom/google/crypto/tink/shaded/protobuf/x;Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le7/e;

    .line 8
    .line 9
    return-object p0
.end method

.method private b0(Le7/g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le7/e;->aesCtrKeyFormat_:Le7/g;

    .line 5
    .line 6
    return-void
.end method

.method private c0(Le7/w;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le7/e;->hmacKeyFormat_:Le7/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public X()Le7/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/e;->aesCtrKeyFormat_:Le7/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Le7/g;->X()Le7/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public Y()Le7/w;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/e;->hmacKeyFormat_:Le7/w;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Le7/w;->X()Le7/w;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public bridge synthetic a()Lcom/google/crypto/tink/shaded/protobuf/o0;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->w()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/crypto/tink/shaded/protobuf/o0$a;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->H()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final t(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Le7/e$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Le7/e;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Le7/e;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Le7/e;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/x$b;

    .line 38
    .line 39
    sget-object p3, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/x$b;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Le7/e;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 45
    .line 46
    :cond_0
    monitor-exit p2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    return-object p1

    .line 52
    :pswitch_3
    sget-object p1, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const-string p1, "aesCtrKeyFormat_"

    .line 56
    .line 57
    const-string p2, "hmacKeyFormat_"

    .line 58
    .line 59
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 64
    .line 65
    sget-object p3, Le7/e;->DEFAULT_INSTANCE:Le7/e;

    .line 66
    .line 67
    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->I(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :pswitch_5
    new-instance p1, Le7/e$b;

    .line 73
    .line 74
    invoke-direct {p1, p2}, Le7/e$b;-><init>(Le7/e$a;)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_6
    new-instance p1, Le7/e;

    .line 79
    .line 80
    invoke-direct {p1}, Le7/e;-><init>()V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
