.class final Lcom/google/android/gms/internal/measurement/q3;
.super Lcom/google/android/gms/internal/measurement/b2;
.source "SourceFile"


# instance fields
.field private final a:Li6/x;


# direct methods
.method constructor <init>(Li6/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q3;->a:Li6/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q3;->a:Li6/x;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q3;->a:Li6/x;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    invoke-interface/range {v0 .. v5}, Li6/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
