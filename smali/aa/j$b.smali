.class public final Laa/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laa/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Laa/j$a;


# direct methods
.method varargs constructor <init>(I[Laa/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Laa/j$b;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Laa/j$b;->b:[Laa/j$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()[Laa/j$a;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/j$b;->b:[Laa/j$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Laa/j$b;->a:I

    .line 2
    .line 3
    return v0
.end method
