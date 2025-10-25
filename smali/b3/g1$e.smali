.class final Lb3/g1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/p2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lb3/g4;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lb3/g4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/g1$e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lb3/g1$e;->b:Lb3/g4;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic c(Lb3/g1$e;Lb3/g4;)Lb3/g4;
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/g1$e;->b:Lb3/g4;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lb3/g4;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$e;->b:Lb3/g4;

    .line 2
    .line 3
    return-object v0
.end method
