.class public final synthetic Lu8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# instance fields
.field public final synthetic a:Lu8/f0;


# direct methods
.method public synthetic constructor <init>(Lu8/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/m;->a:Lu8/f0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/m;->a:Lu8/f0;

    check-cast p1, Lj0/d;

    invoke-static {v0, p1}, Lcom/google/firebase/sessions/b$b$a;->c(Lu8/f0;Lj0/d;)Lu8/e0;

    move-result-object p1

    return-object p1
.end method
