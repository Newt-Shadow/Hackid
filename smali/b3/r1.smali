.class public final synthetic Lb3/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/s;


# instance fields
.field public final synthetic a:Lb3/t1;


# direct methods
.method public synthetic constructor <init>(Lb3/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/r1;->a:Lb3/t1;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/r1;->a:Lb3/t1;

    invoke-static {v0}, Lb3/t1;->e(Lb3/t1;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
