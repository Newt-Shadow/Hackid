.class Ltb/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltb/n;->a(Ltb/i;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltb/i;

.field final synthetic b:Ltb/n;


# direct methods
.method constructor <init>(Ltb/n;Ltb/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb/n$a;->b:Ltb/n;

    .line 2
    .line 3
    iput-object p2, p0, Ltb/n$a;->a:Ltb/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/n$a;->a:Ltb/i;

    .line 2
    .line 3
    iget v0, v0, Ltb/i;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/n$a;->a:Ltb/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltb/i;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
