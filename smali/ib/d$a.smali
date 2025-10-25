.class public final Lib/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lib/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lib/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgb/b;Llb/g;JLid/a;Lid/a;)Lib/d;
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "mainHandler"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "dateProvider"

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "onDrawCallback"

    .line 20
    .line 21
    move-object v8, p6

    .line 22
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "onDrawThrottlerCallback"

    .line 26
    .line 27
    move-object/from16 v7, p7

    .line 28
    .line 29
    invoke-static {v7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lib/d;

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    move-wide v5, p4

    .line 36
    invoke-direct/range {v1 .. v8}, Lib/d;-><init>(Landroid/view/View;Lgb/b;Llb/g;JLid/a;Lid/a;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lib/d;->b(Lib/d;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
