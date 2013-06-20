.class public Lcom/backflipstudios/android/engine/app/BFSActivity;
.super Landroid/app/Activity;
.source "BFSActivity.java"


# instance fields
.field private m_addons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/backflipstudios/android/engine/app/BFSActivityAddon;",
            ">;"
        }
    .end annotation
.end field

.field private m_started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_started:Z

    return-void
.end method


# virtual methods
.method public getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .locals 1
    .parameter "name"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    return-object v0
.end method

.method public getAddonsWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)[Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .locals 8
    .parameter "type"

    .prologue
    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v4, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/BFSActivityAddon;>;"
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 180
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    .line 182
    .local v0, addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 183
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0           #addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 188
    .local v5, retVal:[Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 189
    .local v6, size:I
    if-lez v6, :cond_2

    .line 190
    new-array v5, v6, [Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    .line 191
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    :cond_2
    return-object v5
.end method

.method public getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .locals 5
    .parameter "type"

    .prologue
    .line 198
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 199
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    .line 201
    .local v0, addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 205
    .end local v0           #addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .end local v2           #key:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 97
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3, p1, p2, p3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 100
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 119
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 122
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 161
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 162
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v4, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 164
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 168
    .end local v0           #d:Landroid/app/Dialog;
    .end local v2           #key:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 85
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onDestroy()V

    goto :goto_0

    .line 88
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 89
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, handled:Z
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 129
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v4, p1, p2}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 135
    const/4 v4, 0x1

    .line 137
    :goto_1
    return v4

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, handled:Z
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 146
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v4, p1, p2}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    const/4 v4, 0x1

    .line 154
    :goto_1
    return v4

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 60
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onPause()V

    goto :goto_0

    .line 63
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 49
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onResume()V

    goto :goto_0

    .line 52
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 35
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 36
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onStart()V

    goto :goto_0

    .line 40
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_started:Z

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 72
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onStop()V

    goto :goto_0

    .line 76
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_started:Z

    .line 77
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 107
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 108
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    invoke-virtual {v3, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 111
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V
    .locals 3
    .parameter "addon"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onCreate()V

    .line 213
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_started:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onStart()V

    .line 217
    :cond_0
    const-string v0, "bfsplatform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSActivity: Registering Addon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public unregisterAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V
    .locals 2
    .parameter "addon"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_started:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onStop()V

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    return-void
.end method

.method public unregisterAddonWithName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    .line 235
    .local v0, addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->unregisterAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 237
    .end local v0           #addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    :cond_0
    return-void
.end method

.method public unregisterAddonsWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)V
    .locals 5
    .parameter "type"

    .prologue
    .line 222
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 223
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/BFSActivity;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    .line 225
    .local v0, addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->unregisterAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    goto :goto_0

    .line 229
    .end local v0           #addon:Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method
