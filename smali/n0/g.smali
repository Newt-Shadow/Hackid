.class public final Ln0/g;
.super Landroidx/datastore/preferences/protobuf/w;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/g$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Ln0/g;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/y$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/y$b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln0/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ln0/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 7
    .line 8
    const-class v1, Ln0/g;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/w;->L(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/w;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/w;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/w;->t()Landroidx/datastore/preferences/protobuf/y$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Ln0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic O()Ln0/g;
    .locals 1

    .line 1
    sget-object v0, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic P(Ln0/g;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/g;->Q(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Q(Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln0/g;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ln0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private R()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/y$b;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/w;->F(Landroidx/datastore/preferences/protobuf/y$b;)Landroidx/datastore/preferences/protobuf/y$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ln0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static S()Ln0/g;
    .locals 1

    .line 1
    sget-object v0, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public static U()Ln0/g$a;
    .locals 1

    .line 1
    sget-object v0, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/w;->o()Landroidx/datastore/preferences/protobuf/w$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln0/g$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public T()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final r(Landroidx/datastore/preferences/protobuf/w$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Ln0/e;->a:[I

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
    sget-object p1, Ln0/g;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Ln0/g;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Ln0/g;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Landroidx/datastore/preferences/protobuf/w$b;

    .line 38
    .line 39
    sget-object p3, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/w$b;-><init>(Landroidx/datastore/preferences/protobuf/w;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Ln0/g;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

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
    sget-object p1, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const-string p1, "strings_"

    .line 56
    .line 57
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 62
    .line 63
    sget-object p3, Ln0/g;->DEFAULT_INSTANCE:Ln0/g;

    .line 64
    .line 65
    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/w;->H(Landroidx/datastore/preferences/protobuf/p0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :pswitch_5
    new-instance p1, Ln0/g$a;

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ln0/g$a;-><init>(Ln0/e;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_6
    new-instance p1, Ln0/g;

    .line 77
    .line 78
    invoke-direct {p1}, Ln0/g;-><init>()V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    nop

    .line 83
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
