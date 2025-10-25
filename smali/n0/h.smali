.class public final Ln0/h;
.super Landroidx/datastore/preferences/protobuf/w;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/h$b;,
        Ln0/h$a;
    }
.end annotation


# static fields
.field public static final BOOLEAN_FIELD_NUMBER:I = 0x1

.field public static final BYTES_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Ln0/h;

.field public static final DOUBLE_FIELD_NUMBER:I = 0x7

.field public static final FLOAT_FIELD_NUMBER:I = 0x2

.field public static final INTEGER_FIELD_NUMBER:I = 0x3

.field public static final LONG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/x0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/x0;"
        }
    .end annotation
.end field

.field public static final STRING_FIELD_NUMBER:I = 0x5

.field public static final STRING_SET_FIELD_NUMBER:I = 0x6


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln0/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ln0/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 7
    .line 8
    const-class v1, Ln0/h;

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
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic O(Ln0/h;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln0/h;->n0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Ln0/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->o0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Ln0/h;Ln0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->p0(Ln0/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Ln0/h;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln0/h;->k0(D)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S(Ln0/h;Landroidx/datastore/preferences/protobuf/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->j0(Landroidx/datastore/preferences/protobuf/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T()Ln0/h;
    .locals 1

    .line 1
    sget-object v0, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic U(Ln0/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->i0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Ln0/h;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->l0(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Ln0/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln0/h;->m0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Z()Ln0/h;
    .locals 1

    .line 1
    sget-object v0, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static h0()Ln0/h$a;
    .locals 1

    .line 1
    sget-object v0, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/w;->o()Landroidx/datastore/preferences/protobuf/w$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln0/h$a;

    .line 8
    .line 9
    return-object v0
.end method

.method private i0(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private j0(Landroidx/datastore/preferences/protobuf/g;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 7
    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private k0(D)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private l0(F)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private m0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private n0(J)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private o0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Ln0/h;->valueCase_:I

    .line 6
    .line 7
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method private p0(Ln0/g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    iput p1, p0, Ln0/h;->valueCase_:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public X()Z
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public Y()Landroidx/datastore/preferences/protobuf/g;
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/datastore/preferences/protobuf/g;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/g;->b:Landroidx/datastore/preferences/protobuf/g;

    .line 13
    .line 14
    return-object v0
.end method

.method public a0()D
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Double;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public b0()F
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Float;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public c0()I
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public d0()J
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public e0()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public f0()Ln0/g;
    .locals 2

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ln0/h;->value_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln0/g;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Ln0/g;->S()Ln0/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public g0()Ln0/h$b;
    .locals 1

    .line 1
    iget v0, p0, Ln0/h;->valueCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Ln0/h$b;->b(I)Ln0/h$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    sget-object p1, Ln0/h;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Ln0/h;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Ln0/h;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Landroidx/datastore/preferences/protobuf/w$b;

    .line 38
    .line 39
    sget-object p3, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/w$b;-><init>(Landroidx/datastore/preferences/protobuf/w;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Ln0/h;->PARSER:Landroidx/datastore/preferences/protobuf/x0;

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
    sget-object p1, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    const-string p1, "value_"

    .line 56
    .line 57
    const-string p2, "valueCase_"

    .line 58
    .line 59
    const-class p3, Ln0/g;

    .line 60
    .line 61
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "\u0001\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\u0008=\u0000"

    .line 66
    .line 67
    sget-object p3, Ln0/h;->DEFAULT_INSTANCE:Ln0/h;

    .line 68
    .line 69
    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/w;->H(Landroidx/datastore/preferences/protobuf/p0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_5
    new-instance p1, Ln0/h$a;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ln0/h$a;-><init>(Ln0/e;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_6
    new-instance p1, Ln0/h;

    .line 81
    .line 82
    invoke-direct {p1}, Ln0/h;-><init>()V

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
