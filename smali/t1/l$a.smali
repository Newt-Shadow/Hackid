.class public final Lt1/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lt1/l$a;

.field private static b:Lid/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt1/l$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lt1/l$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt1/l$a;->a:Lt1/l$a;

    .line 7
    .line 8
    sget-object v0, Lt1/l$a$a;->e:Lt1/l$a$a;

    .line 9
    .line 10
    sput-object v0, Lt1/l$a;->b:Lid/l;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt1/l;
    .locals 2

    .line 1
    sget-object v0, Lt1/l$a;->b:Lid/l;

    .line 2
    .line 3
    sget-object v1, Lt1/o;->b:Lt1/o;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lt1/l;

    .line 10
    .line 11
    return-object v0
.end method
