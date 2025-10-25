.class public final Le7/c0;
.super Lcom/google/crypto/tink/shaded/protobuf/x;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/c0$b;,
        Le7/c0$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Le7/c0;

.field public static final KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/w0;"
        }
    .end annotation
.end field

.field public static final PRIMARY_KEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/z$d;"
        }
    .end annotation
.end field

.field private primaryKeyId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le7/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Le7/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 7
    .line 8
    const-class v1, Le7/c0;

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
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/x;->u()Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic U()Le7/c0;
    .locals 1

    .line 1
    sget-object v0, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic V(Le7/c0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/c0;->g0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Le7/c0;Le7/c0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le7/c0;->X(Le7/c0$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X(Le7/c0$c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Le7/c0;->Y()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/z$d;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->G(Lcom/google/crypto/tink/shaded/protobuf/z$d;)Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static d0()Le7/c0$b;
    .locals 1

    .line 1
    sget-object v0, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x;->p()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Le7/c0$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static e0(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/p;)Le7/c0;
    .locals 1

    .line 1
    sget-object v0, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->L(Lcom/google/crypto/tink/shaded/protobuf/x;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le7/c0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static f0([BLcom/google/crypto/tink/shaded/protobuf/p;)Le7/c0;
    .locals 1

    .line 1
    sget-object v0, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/x;->M(Lcom/google/crypto/tink/shaded/protobuf/x;[BLcom/google/crypto/tink/shaded/protobuf/p;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le7/c0;

    .line 8
    .line 9
    return-object p0
.end method

.method private g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Le7/c0;->primaryKeyId_:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public Z(I)Le7/c0$c;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Le7/c0$c;

    .line 8
    .line 9
    return-object p1
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

.method public a0()I
    .locals 1

    .line 1
    iget-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b0()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Le7/c0;->key_:Lcom/google/crypto/tink/shaded/protobuf/z$d;

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

.method public c0()I
    .locals 1

    .line 1
    iget v0, p0, Le7/c0;->primaryKeyId_:I

    .line 2
    .line 3
    return v0
.end method

.method protected final t(Lcom/google/crypto/tink/shaded/protobuf/x$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Le7/c0$a;->a:[I

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
    sget-object p1, Le7/c0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Le7/c0;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Le7/c0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/x$b;

    .line 38
    .line 39
    sget-object p3, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/x$b;-><init>(Lcom/google/crypto/tink/shaded/protobuf/x;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Le7/c0;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/w0;

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
    sget-object p1, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const-string p1, "primaryKeyId_"

    .line 56
    .line 57
    const-string p2, "key_"

    .line 58
    .line 59
    const-class p3, Le7/c0$c;

    .line 60
    .line 61
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 66
    .line 67
    sget-object p3, Le7/c0;->DEFAULT_INSTANCE:Le7/c0;

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
    new-instance p1, Le7/c0$b;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Le7/c0$b;-><init>(Le7/c0$a;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_6
    new-instance p1, Le7/c0;

    .line 81
    .line 82
    invoke-direct {p1}, Le7/c0;-><init>()V

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
