.class public final Le7/a0;
.super Lcom/google/crypto/tink/shaded/protobuf/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/a0$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Le7/a0;

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/w0;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private outputPrefixType_:I

.field private typeUrl_:Ljava/lang/String;

.field private value_:Lcom/google/crypto/tink/shaded/protobuf/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le7/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Le7/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 7
    .line 8
    const-class v1, Le7/a0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->Q(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Le7/a0;->typeUrl_:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 9
    .line 10
    iput-object v0, p0, Le7/a0;->value_:Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic U()Le7/a0;
    .locals 1

    .line 1
    sget-object v0, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic V(Le7/a0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/a0;->e0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Le7/a0;Lcom/google/crypto/tink/shaded/protobuf/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/a0;->f0(Lcom/google/crypto/tink/shaded/protobuf/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X(Le7/a0;Le7/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/a0;->d0(Le7/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Y()Le7/a0;
    .locals 1

    .line 1
    sget-object v0, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c0()Le7/a0$b;
    .locals 1

    .line 1
    sget-object v0, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->p()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Le7/a0$b;

    .line 8
    .line 9
    return-object v0
.end method

.method private d0(Le7/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Le7/i0;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Le7/a0;->outputPrefixType_:I

    .line 6
    .line 7
    return-void
.end method

.method private e0(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le7/a0;->typeUrl_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private f0(Lcom/google/crypto/tink/shaded/protobuf/h;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le7/a0;->value_:Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Z()Le7/i0;
    .locals 1

    .line 1
    iget v0, p0, Le7/a0;->outputPrefixType_:I

    .line 2
    .line 3
    invoke-static {v0}, Le7/i0;->a(I)Le7/i0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Le7/i0;->g:Le7/i0;

    .line 10
    .line 11
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

.method public a0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/a0;->typeUrl_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b0()Lcom/google/crypto/tink/shaded/protobuf/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/a0;->value_:Lcom/google/crypto/tink/shaded/protobuf/h;

    .line 2
    .line 3
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
    sget-object p2, Le7/a0$a;->a:[I

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
    sget-object p1, Le7/a0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Le7/a0;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Le7/a0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/x$b;

    .line 38
    .line 39
    sget-object p3, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/x$b;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Le7/a0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

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
    sget-object p1, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const-string p1, "typeUrl_"

    .line 56
    .line 57
    const-string p2, "value_"

    .line 58
    .line 59
    const-string p3, "outputPrefixType_"

    .line 60
    .line 61
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 66
    .line 67
    sget-object p3, Le7/a0;->DEFAULT_INSTANCE:Le7/a0;

    .line 68
    .line 69
    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->I(Lcom/google/crypto/tink/shaded/protobuf/o0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_5
    new-instance p1, Le7/a0$b;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Le7/a0$b;-><init>(Le7/a0$a;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_6
    new-instance p1, Le7/a0;

    .line 81
    .line 82
    invoke-direct {p1}, Le7/a0;-><init>()V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    nop

    .line 87
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
